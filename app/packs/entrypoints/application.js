/* eslint no-console:0 */

// Este archivo de compila automaticamente con Webpack, junto con otros
// archivos presentes en este directorio.  Lo animamos a poner la lógica
// de su aplicación en una estructura relevante en app/javascript y usar
// solo estos archivos pack para referenciar ese código de manera que sea
// compilado.
//
// Para referenciar este archivo agregue 
// <%= javascript_pack_tag 'application' %> 
// en el archivo de maquetación adecuado, como 
// app/views/layouts/application.html.erb


// Quite el comentario para copiar todas las imágenes estáticas de
// ../images en la carpeta de salida y referencielas con el auxiliar
// image_pack_tag en las vistas (e.g <%= image_pack_tag 'rails.png' %>)
// o con el siguiente auxiliar `imagePath`:
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

console.log('Hola Mundo desde Webpacker')

import Rails from "@rails/ujs"
Rails.start()

import Turbolinks from "turbolinks"
Turbolinks.start()

import $ from "expose-loader?exposes=$,jQuery!jquery";

import 'popper.js'              // Dialogos emergentes usados por bootstrap
import * as bootstrap from 'bootstrap'              // Maquetacion y elementos de diseño
import 'chosen-js/chosen.jquery';       // Cuadros de seleccion potenciados
import 'bootstrap-datepicker'
import 'bootstrap-datepicker/dist/locales/bootstrap-datepicker.es.min.js'


document.addEventListener('turbolinks:load', function () {
})


// Funciones adaptadas de https://codepen.io/jrio/pen/dNKLMR por Joao Rodrigues
const URL = "/heb412/personas.json";

  /**
   * Añade opciones al datalist (proceso lo obtenido con AJAX)
   * @param {array} resp - arreglo de opciones para el datalist
   */
  let autocompletar_llena_datalist = resp => {
    console.log("OJO autocompletar_llena_datalist, resp="+resp)
    // Get items from rsp not available in cache
    let frag = document.createDocumentFragment();
    resp.forEach(item => {
      let opcion = document.createElement("option");
      [opcion.id, opcion.text] = [item['id'], item['value']];
      frag.appendChild(opcion);
    });
    let sel = document.getElementById("fuente-personas");
    sel.innerHTML=''
    if (frag.hasChildNodes()) {
      sel.appendChild(frag);
    }
  };

  /**
   * Usa texto tecleado por el usuario de más de 4 caracteres
   * para hacer llamada AJAX que busca con ese término y
   * después ejecuta autocompletar_llena_datalist con el resultado
   * @param {event} e evento
   */
  let autocompletar_busca = e => {
    if (e.target.getAttribute('data-autocompleta') === 'no') {
      console.log("OJO ya no autocompleta")
      return
    }
    const val = e.target.value;
    console.log('OJO autocompletar_busca, val='+val)
    if (val.length < 4) return; 
    let url = URL+'?term='+val
/*    Rails.ajax({
      type: "get",
      url: url,
      data: null,
      success: 
    }) */

    let req = new XMLHttpRequest();
    req.onload = () => {
      if (req.status === 200) { // success
        let resp = req.responseText;
        if (resp) {
          autocompletar_llena_datalist(JSON.parse(resp));
        }
      }
    };
    req.onerror = () => showMsg(`No pudo consultarse listado de personas.`);
    console.log('OJO autocompletar_busca antes de open')
    req.open("GET", url, true); 
    req.setRequestHeader("Content-type",
      "application/x-www-form-urlencoded");
    req.setRequestHeader('Accept', 'application/json');
    req.send();
  };

// Elije una persona en autocompletación
function autocompletacion_elegida(cadpersona, id, eorig, root=window) {
  sip_arregla_puntomontaje(root)
  let cs = id.split(";")
  let id_persona = cs[0]
  let pl = []
  let ini = 0
  cs.forEach((s, i) => {
     let t = parseInt(s)
     pl[i] = cadpersona.substring(ini, ini + t)
     ini = ini + t + 1
  })
  // pl[1] cnom, pl[2] es cape, pl[3] es cdoc
  let d = "&id_persona=" + id_persona
  d += "&ac_orgsocial_persona=true"
  let a = root.puntomontaje + 'personas/datos'

  $.ajax({
    url: a, 
    data: d, 
    dataType: "json"
  }).fail( (jqXHR, texto) => {
    alert("Error con ajax " + texto)
  }).done( (e, r) => {
    let divcp = $(eorig.target).closest('.campos_persona')
    divcp.find('[id$=_attributes_id]').val(e.id)
    divcp.find('[id$=_attributes_nombres]').val(e.nombres)
    divcp.find('[id$=_attributes_apellidos]').val(e.apellidos)
    divcp.find('[id$=_attributes_sexo]').val(e.sexo)
    let tdocid = divcp.find('[id$=_attributes_tdocumento_id] option:contains(' +
      e.tdocumento + ')').val()
    divcp.find('[id$=_tdocumento_id]').val(tdocid)
    divcp.find('[id$=_numerodocumento]').val(e.numerodocumento)
    divcp.find('[id$=_anionac]').val(e.anionac)
    divcp.find('[id$=_mesnac]').val(e.mesnac)
    divcp.find('[id$=_dianac]').val(e.dianac)
    divcp.find('[id$=_cargo]').val(e.cargo)
    divcp.find('[id$=_correo]').val(e.correo)
    eorig.target.setAttribute('data-autocompleta', 'no')
    eorig.target.removeAttribute('list')
  })
  return

}

  /**
   * Detecta teclas levantadas para mejorar listado de datalist
   * @param {event} e evento
   */
document.addEventListener('keyup', function (e) {
  console.log('OJO keyup ' + e.target.id)
  if (/^orgsocial_orgsocial_persona_attributes_[0-9]*_persona_attributes_nombres$/.test(e.target.id)) {
    autocompletar_busca(e)
  }
  
}, false)

// Solución para diferenciar cuando se teclea o cuando se elije basada en
// la de Dan en https://stackoverflow.com/questions/30022728/perform-action-when-clicking-html5-datalist-option

let teclapresionada = false

/**
 * Detecta teclas presionadas para diferenciar algo tecleado de click en opción
 * @param {event} e evento
 */
document.addEventListener('keydown', function (e) {
  console.log('OJO keydown ' + e.target.id)
  if (/^orgsocial_orgsocial_persona_attributes_[0-9]*_persona_attributes_nombres$/.test(e.target.id)) {
    if(e.key) {
      teclapresionada = true;
    }
  }
}, false)


/**
 * Detecta cuando se elige una de las opciones autocompletadas.
 * @param {event} e evento
 */
document.addEventListener('input', function (e) {
  console.log('OJO input ' + e.target.id)
  if (/^orgsocial_orgsocial_persona_attributes_[0-9]*_persona_attributes_nombres$/.test(e.target.id)) {
    if (teclapresionada === false) {
      console.log("OJO aquí está el problema con datalist porque no tenemos forma de saber el id de la opción elegida, e.target.value tiene el texto, pero podría haber varias entradas con el mismo texto. Lo menos peor que se puede hacer es buscar entra las opciones la primera cuyo texto coincida y elegir esa")
      var xpath = "//datalist[@id='fuente-personas']/option[text()='" +
        e.target.value + "']"
      var o= document.evaluate(xpath, document, null, 
        XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
      if (typeof(o.id) == 'string') {
        autocompletacion_elegida(e.target.value, o.id, e)
        e.stopPropagation()  // No hace burbuja
        e.preventDefault() // No ejecuta acción predeterminada
      } else {
        alert('Problema para identificar opción elegida')
      }
    }
    teclapresionada = false
  }

}, false)



