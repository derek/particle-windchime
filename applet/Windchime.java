import processing.core.*; 
import processing.xml.*; 

import netscape.javascript.*; 
import netscape.javascript.JSException; 
import arb.soundcipher.*; 
import arb.soundcipher.constants.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class Windchime extends PApplet {







JSObject window;
SCScore score = new SCScore();

public void setup() {
  size(200, 200);
  println(getParameter("test_string"));
}

public void draw() { }

public void loadConfig(JSObject config) {
}

class Config {
  double pid, charge, energy, x, y, z, r, t, px, py, pz, pt, pp;
  
  public Config(JSObject json) {
    this.pid    = (Double)json.getMember("pid");
    this.charge = (Double)json.getMember("charge");
    this.energy = (Double)json.getMember("energy");
    this.x      = (Double)json.getMember("x");
    this.y      = (Double)json.getMember("y");
    this.z      = (Double)json.getMember("z");
    this.r      = (Double)json.getMember("r");
    this.t      = (Double)json.getMember("t");
    this.px     = (Double)json.getMember("px");
    this.py     = (Double)json.getMember("py");
    this.pz     = (Double)json.getMember("pz");
    this.pt     = (Double)json.getMember("pt");
    this.pp     = (Double)json.getMember("pp");
  }
}

class Data {
  int id, pid, charge, radius;
  double e, px, py, pz, time, x, y, z, r, pt, pp;
  
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "Windchime" });
  }
}
