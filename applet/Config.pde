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

