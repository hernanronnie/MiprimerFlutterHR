// memoria para favorito 

class Favoritos {
static final List<String> habilidades = <String>[];

static void agregar(String habilidad) {
if (!habilidades.contains(habilidad)) {
habilidades.add(habilidad);
}
}

static void eliminar(String habilidad) {
habilidades.remove(habilidad);
}

static bool contiene(String habilidad) {
return habilidades.contains(habilidad);
}
}
