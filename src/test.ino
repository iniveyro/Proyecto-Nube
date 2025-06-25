#include <Wire.h>
#include <ESP8266WiFi.h>
int estado;
//=============================================================
WiFiServer server(80);
const char* ssid     = "Ivan";
const char* password = "*********";
//=============================================================
void setup() {

  pinMode (2,INPUT);
  
  Serial.begin(115200);
  WiFi.disconnect();
  delay(3000);
  Serial.println ();
  Serial.println("Ingresando en la RED");
  Serial.println (); 
  WiFi.begin(ssid, password);
  while ((!(WiFi.status() == WL_CONNECTED))){
    delay(300);
    Serial.print(".");
    }
   Serial.println ();
   Serial.println("Conexion Establecida!");
   Serial.println("La Direccion IP es: ");
   Serial.print((WiFi.localIP()));
   Serial.println ();
   server.begin();
//--------------------------------------------------------
}

void loop() {

estado = digitalRead (2);
    
    WiFiClient client = server.available();
    if (!client) { return; }
    
    
    //while(!client.available()){  delay(1); }
    //Serial.println((client.readStringUntil('\r')));
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("");
//---------------------------------  Pagina en formato HTML ---------------------------------------
    client.println("<html>");
    client.println ("<META HTTP-EQUIV='REFRESH' CONTENT='2; URL='WiFi.localIP()'>");
    client.println ("<head>");
    client.println ("<h1 aling='center'>Grupo ALFA - Embaladora</h1>");
    client.println ("</head>");
    client.println ("Estado del Motor: ");
    client.println (estado);

    client.println ("<P ALING=left>");
    client.println ("Si esta en 0 esta apagado");
    client.println ("</p>");

    client.println ("<P ALING=left>");
    client.println ("Si esta en 1 esta encendido");
    client.println ("</p>");

    client.println("</html>");
    client.stop();
    delay(100);
//---------------------------------------------------------------------------------
}
