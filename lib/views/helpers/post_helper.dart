Future<T> procesarRequest<T, P>(
    Future<T> Function(P) llamadoRequest, P url) async {
  try {
    final resultado = await Future.delayed(
        const Duration(seconds: 1), () => llamadoRequest(url));
    return resultado;
  } catch (e) {
    throw e; // Puedes manejar errores aquí según tus necesidades
  }
}

void uriEntender(String urlString) {
  // Utilizar Uri.parse para analizar la cadena en un objeto Uri
  Uri uri = Uri.parse(urlString);

  // Acceder a los componentes de la URI
  print("Esquema: ${uri.scheme}"); // Output: Esquema: https
  print("Host: ${uri.host}"); // Output: Host: www.ejemplo.com
  print("Puerto: ${uri.port}"); // Output: Puerto: 8080
  print("Ruta o endpoint: ${uri.path}"); // Output: Ruta: /ruta
  print("Parámetros de consulta: ${uri.queryParameters}"); // Output: Parámetros de consulta: {parametro: valor}
}