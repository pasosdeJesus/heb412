# frozen_string_literal: true

conexion = ActiveRecord::Base.connection

# De motores y finalmente de este
motor = ["msip", "mr519_gen", "heb412_gen", nil]
motor.each do |m|
  Msip.carga_semillas_sql(conexion, m, :cambios)
  Msip.carga_semillas_sql(conexion, m, :datos)
end

# Usuario para primer ingreso heb412, heb412
conexion.execute("INSERT INTO public.usuario
	(id, nusuario, email, encrypted_password, password,
  fechacreacion, created_at, updated_at, rol)
	VALUES (1, 'heb412', 'heb412@localhost',
	'$2a$10$FdubMrU.LZmkqMCFIaVXWORiOIQAM8/AqRrlC3SlkKsiZNCV/mmpC',
	'', '2014-08-14', '2014-08-14', '2014-08-14', 1);")
