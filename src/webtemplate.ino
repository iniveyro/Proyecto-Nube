#include <ArduinoJson.h>

/////////////////////////////////
// Generated with a lot of love//
// with TUNIOT FOR ESP8266     //
// Website: Easycoding.tn      //
/////////////////////////////////
#include <ESP8266WiFi.h>

IPAddress staticIP297_255(192,168,1,90);
IPAddress gateway297_255(192,168,1,1);
IPAddress subnet297_255(255,255,255,0);

WiFiServer server(80);
String s;
int  i;
 int c;
 int d;
 int e;
void setup()
{
  Serial.begin(115200);
  WiFi.disconnect();
  delay(300);
   WiFi.begin("NIVEYRO1","*******");
  while ((!(WiFi.status() == WL_CONNECTED))){
    delay(300);

  }
  WiFi.config(staticIP297_255, gateway297_255, subnet297_255);
  Serial.println("Estado: *CONECTADO*");
  Serial.println("Direccion IP: ");
  Serial.println((WiFi.localIP().toString()));
  server.begin();

}


void loop()
{
    WiFiClient client = server.available();
    //if (!client) { return; }
    //while(!client.available()){  delay(1); }
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("");
//---------------------------------  Pagina en formato HTML ---------------------------------------
    client.println("<html>");
    //client.println ("<META HTTP-EQUIV='REFRESH' CONTENT='2; URL='192.168.1.90'>");
    client.println ("<P ALING=left>");
    client.println ("Consumo (watt): ");
    client.println (c);
    client.println ("</p>");
    
    client.println ("<P ALING=left>");
    client.println ("Consumo Total: ");
    client.println (d);
    client.println ("</p>");

    client.println ("<P ALING=left>");
    client.println ("Precio: $");
    client.println (e);
    client.println ("</p>");

    client.println("</html>");
   Serial.println("");
    c = c + 1;
    d = c + 2;
    e = c*2;
    delay (1000);
}
