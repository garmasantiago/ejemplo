
data Persona = Persona {
        nombre :: String,
        edad :: Int,
        domicilio :: String
}deriving(Eq,Show)


juan = Persona {
    nombre = "Juan",
    edad = 23,
    domicilio = "Ayacucho 554"
}

data Localidad = Localidad {
        direcion :: String,
        numero :: Int
}deriving(Eq,Show)

palermo = Localidad{
        direcion = "santa fe y araos",
        numero = 2948
}

mostrarDatos :: Persona -> Persona
mostrarDatos persona = persona

cambiarDomicilio :: Localidad -> Int -> Persona -> Persona
cambiarDomicilio localidad incremento persona = guardarDatos incremento  (direcion localidad) persona

guardarDatos :: Int -> String -> Persona -> Persona
guardarDatos incremento dom (Persona nombre edad domicilio) = (Persona nombre (edad + incremento ) dom)

--f a = not(even 3)
f  = not.even 