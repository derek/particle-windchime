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
  config.pid = getParameter("pid");
  config.charge = getParameter("charge");
  config.energy = getParameter("energy");
  config.x = getParameter("x");
  config.y = getParameter("y");
  config.z = getParameter("z");
  config.r = getParameter("r");
  config.t = getParameter("t");
  config.px = getParameter("px");
  config.py = getParameter("py");
  config.pz = getParameter("pz");
  config.pt = getParameter("pt");
  config.pp = getParameter("pp");
}

