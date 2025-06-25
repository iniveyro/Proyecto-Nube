#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>
#include <ArduinoJson.h>
#include "EmonLib.h"                 
EnergyMonitor emon1;                   

#include <LiquidCrystal_I2C.h>

// set the LCD number of columns and rows
int lcdColumns = 16;
int lcdRows = 2;

// set LCD address, number of columns and rows
// if you don't know your display address, run an I2C scanner sketch
LiquidCrystal_I2C lcd(0x27, lcdColumns, lcdRows);  

IPAddress staticIP297_255(192,168,1,90);
IPAddress gateway297_255(192,168,1,1);
IPAddress subnet297_255(255,255,255,0);

//preico por kw
//-------------------------------------------------------------
float cinc=0.6921;
float cien=0.9060;
float ciencinc=1.3968;
float trec=1.5604;
//-------------------------------------------------------------
//kw
//-------------------------------------------------------------
int cinco=50;
int cient=100;
int cientocinco=150;
int trecientos=300;

const char* wifiName = "Proyecto";
const char* wifiPass = "15995123";
double W=0;
double Wh=0;
double Sum=0;
double Seg=0;
double DWh=0;
double MWh=0;
double MKWh=0;
double precio=0;
int precio2=0;
long i=0;
long ii=0;
long iii=0;
  
ESP8266WebServer server(80);

void handleRoot() { //SUBACCION PARA ENVIAR LAS VARIABLES A LA APP
  String webPage;
  // Use arduinojson.org/assistant to compute the capacity.
  StaticJsonBuffer<200> jsonBuffer;
  JsonObject& root = jsonBuffer.createObject();
  root["W"] = W;
  root["KWH"] = Wh; 
  root["Dia"] = DWh; 
  root["Mes"] = MKWh; 
  root["Pre"] = ("$",precio); 
  root.printTo(webPage);  
  server.send(200, "text/html", webPage);
}

void setup() {
//Sensor de corriente
  Serial.begin(115200);
  emon1.current(0, 3.85);
  delay(1000);
//ESP8266 SE CONECTA A WIFI Y CONFIGURA PAGINA PARA PASAR LAS VARIABLES EN FORMATO .JSON 
  Serial.println();
  Serial.print("Connecting"); 
  WiFi.begin(wifiName, wifiPass);   

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  WiFi.config(staticIP297_255, gateway297_255, subnet297_255);
  Serial.println("");
  Serial.println("CONEXION EXITOSA");
  Serial.println("Direccion IP: ");
  Serial.println(WiFi.localIP());   
  server.on("/", handleRoot);      
  server.begin(); //Start web server
  Serial.println("SERVIDOR HTTP: INICIADO");
/////////////////////////////////////////////////////////////////////

  // initialize LCD
  lcd.init();
  // turn on LCD backlight                      
  lcd.backlight();

}

void loop() {
while (iii < 30){ //CON ESTE MIENTRAS OBTENGO EL CONSUMO EN UN MES
  while (ii < 24){ //CON ESTE MIENTRAS OBTENGO EL CONSUMO EN UN DIA
    while (i < 3600){ //CON ESTE MIENTRAS OBTENGO EL CONSUMO EN UNA HORA (SACARA 1 LECTURA X SEG, COMO CADA HORA TIENE 3600SEG EL PROMEDIO ME DARA EL CONSUMO DURANTE ESA HORA APROX)
        double Irms = emon1.calcIrms(1480);  // Calculo corriente 
        W = round (Irms * 220.0 * cos(0.9)); // Calculo potencia, teniendo en cuenta el coseno pi standar de casa
        Sum=Sum+W; //acumulo valor de potencia
        Seg=Seg+1; // sumo contador de segundos
        server.handleClient(); //Envio Valores a la app
        lcd.setCursor(0, 0);
        lcd.print("Consumo: ");
        lcd.print(W);
        lcd.setCursor(0,1);
        lcd.print("Precio: ");
        lcd.print(precio2);
      //  Serial.println (W);
        delay (1000); 
        i= i + 1; // autoincremento para despues salir del ciclo
       // if (i=10){DWh = 0;}
    }  
    Wh = round (Sum / Seg); // Saco promedio de potencia, para obtener W/h
    DWh = DWh + Wh; //Acumulo el valor de w/h, ya que la sumatoria de 24 veces la pontecia sera el consumo por dia 
    i=0; //reestablezco el contador 
    ii = ii + 1; //autoincremento para despues salir del ciclo
    Serial.println ("FIN HORA");
  }

if(iii=2){
  precio = 0;
  MKWh = 0;
  }

MWh = MWh + DWh; //Acumulo el valor de w/dia, ya que la sumatoria de 30 veces la pontecia sera el consumo por mes (puse 30 porque mas o menos es los dias que tiene un mes)

ii=0; //reestablezco el contador 
iii = iii + 1;// autoincremento para despues salir del ciclo
Serial.println ("FIN DIA");
}
iii = 0;//reestablezco el contador 
Serial.println ("-------------FIN MES-------------");
MKWh = MWh / 1000;
precio = 0;
precio2 = round (precio);
if (MKWh > 0){
  precio=precio + 56.89;
  if (MKWh > 151){
       precio=precio + 109.94;
        if (MKWh > 326){
          precio=precio + 178.05;
             if (MKWh > 401){
                precio=precio + 202.33;
                   if (MKWh > 450){
                      precio=precio + 294.54;
                       if (MKWh > 501){
                          precio=precio + 553.29;
                             if (MKWh > 601){
                                precio=precio + 1465.94;
                                   if (MKWh > 701){
                                      precio=precio + 1892.89;
                                         if (MKWh > 1400){
                                             precio=precio + 2576.44;
                                         }
                                         }
                                         }
                                         }
                                         }
                                         }
                                         }
                                         }
                                         }
MWh = 0;
}
