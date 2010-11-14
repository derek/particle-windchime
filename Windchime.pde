import arb.soundcipher.*;
import arb.soundcipher.constants.*;

Config config;
SCScore score = new SCScore();

void setup() {
  size(200, 200);
  loadConfig();
}

void draw() { }

void loadConfig() {
  config = new Config();
  try {
    config.pid = Double.parseDouble(getParameter("pid"));
    config.charge = Double.parseDouble(getParameter("charge"));
    config.energy = Double.parseDouble(getParameter("energy"));
    config.x = Double.parseDouble(getParameter("x"));
    config.y = Double.parseDouble(getParameter("y"));
    config.z = Double.parseDouble(getParameter("z"));
    config.r = Double.parseDouble(getParameter("r"));
    config.t = Double.parseDouble(getParameter("t"));
    config.px = Double.parseDouble(getParameter("px"));
    config.py = Double.parseDouble(getParameter("py"));
    config.pz = Double.parseDouble(getParameter("pz"));
    config.pt = Double.parseDouble(getParameter("pt"));
    config.pp = Double.parseDouble(getParameter("pp"));
  } catch(Exception e) { }
}

