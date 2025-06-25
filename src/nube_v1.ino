#include <EEPROM.h>
#include <LiquidCrystal_I2C.h>
#include <ESP8266WiFi.h>
//LIBRERIAS

#include "EmonLib.h"
EnergyMonitor emon1;
//=============================================================
//VARIABLES
//-------------------------------------------------------------
//*constantes
//=============================================================

int Itotal;

float voltio = 220.0;
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
int pin_sct=0;
//____________________________________________________________
//*variable
//____________________________________________________________
int tiempo1 = 0;
float precio;
int calibracion1 = 1;
float preciov;
float vatios;
float kvatios = 000.0;
float sumak = 000000.0;
float preciotot;
float mamper;
//=========================================================
LiquidCrystal_I2C lcd(0x27,20,4);
//=============================================================
WiFiServer server(80);
const char* ssid     = "ILMM";
const char* password = "81649237";
//=============================================================
void setup() {
    Serial.begin(115200);
    emon1.current(0, 2.6);
lcd.init();                      // initialize the lcd 
  lcd.init();
lcd.backlight();// Current: input pin, calibration.
lcd.setCursor (0,0);
lcd.print ("Consumo:");
lcd.setCursor(0,1);
lcd.print("Precio: $");

WiFi.disconnect();
  delay(3000);
  Serial.println ();
  Serial.println("Ingresando en la RED");
  Serial.println (); 
   WiFi.begin(ssid, password);
  while ((!(WiFi.status() == WL_CONNECTED))){
    delay(300);
    Serial.print(".");}
  Serial.println ();
  Serial.println("Conexion Establecida!");
  Serial.println("La Direccion IP es: ");
  Serial.print((WiFi.localIP()));
  Serial.println ();
  server.begin();
//--------------------------------------------------------
}

void loop() {
    
    WiFiClient client = server.available();
    //if (!client) { return; }
    //while(!client.available()){  delay(1); }
    Serial.println((client.readStringUntil('\r')));
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("");
//---------------------------------  Pagina en formato HTML ---------------------------------------
    client.println("<html>");
    client.println ("<META HTTP-EQUIV='REFRESH' CONTENT='2; URL='WiFi.localIP()'>");
    client.println ("<head>");
    client.println ("<h1 aling='center'>DATOS</h1>");
    client.println ("</head>");
    client.println ("Consumo: ");
    client.println (kvatios);

     client.println ("<P ALING=left>");
    client.println ("Consumo (watt): ");
    client.println (vatios);
    client.println ("</p>");
    
    client.println ("<P ALING=left>");
    client.println ("Consumo Total: ");
    client.println (sumak);
    client.println ("</p>");
    client.println ("<P ALING=left>");
    client.println ("Precio: ");
    client.println (preciotot);
    client.println ("</p>");
    client.println("</html>");
    client.stop();
    delay(1);
//---------------------------------------------------------------------------------
double Imed = emon1.calcIrms(1484); //Imed=corriente medida por la pinza
mamper = Imed / 1000;

// vatios = mamper * voltio;

vatios = Imed * voltio;
kvatios = vatios / 1000;
sumak = sumak + kvatios;

if (calibracion1 == 1){
sumak = sumak - 0.65;
calibracion1 = 1 - 1;
}

// EEPROM.write (2, sumak);

//--------------------------------------------------------

lcd.setCursor(9,0);
lcd.print(kvatios);
lcd.print ("Kw");
tiempo1 = tiempo1 + 1;
Serial.println (tiempo1);
Serial.println (sumak);
//========================================================
//condicionales
//mostrar precio
//========================================================

if (tiempo1 == 15){

if (sumak <= cinco){
           delay (1);  
       preciotot = preciotot+cinc;
  }
if ((sumak >= cinco) && (sumak <= cient)){
                     delay (1);       
          preciotot=preciotot+cien;
}
if ((sumak >= cient) && (sumak <= cientocinco)){
                      delay (1);     
          preciotot=preciotot+ciencinc;
  }
if ((sumak >= cientocinco)&& (sumak <= trecientos)){
                   delay (1);
          preciotot=preciotot+trec;
}
lcd.setCursor (9,1);
lcd.print (preciotot);
tiempo1 = tiempo1 - 15;
}
}
