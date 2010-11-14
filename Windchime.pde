import arb.soundcipher.*;
import arb.soundcipher.constants.*;

Config config;
SCScore score = new SCScore();

void setup() {
  size(2, 2);
  
  loadConfig();
  loadEvents();
  mapEvents();
  scoreEvents();
  score.play();
}

void scoreEvents() {
  Event e;
  for(int i = 0; i < events.size(); i++) {
    e = events.get(i);
    score.addNote(e.tick, e.channel, e.instrument, e.pitch, e.volume, e.duration, 0.8, 64);
  }
}

void draw() { }

void loadConfig() {
  config = new Config();
  try {
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
  } catch(Exception e) { }
}
