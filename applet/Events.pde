ArrayList<Event> events = new ArrayList<Event>();

/*
id:	from(0.0)	to(31.0)
pid:	from(0.0)	to(5.0)
charge:	from(-1.0)	to(1.0)
e:	from(0.014)	to(4.096)
px:	from(-3.869)	to(2.042)
py:	from(-2.537)	to(1.742)
pz:	from(-2.863)	to(1.959)
radius:	from(0.0)	to(20.0)
time:	from(0.2)	to(137.1)
x:	from(-2.280098)	to(2.279904)
y:	from(-2.285961)	to(2.279419)
z:	from(-2.172359)	to(2.05191)
r:	from(0.100008)	to(2.3)
pt:	from(-0.96023)	to(0.898893)
pp:	from(-1.56715)	to(1.568088)
*/

void mapEvents() {
  HashMap<Integer, Integer> channels = new HashMap<Integer, Integer>();
  HashMap<Integer, Integer> instruments = new HashMap<Integer, Integer>();
  float from_min, from_max;
  
  float[] voices = {
    SCScore.CELLO,
    SCScore.FRETLESS_BASS,
    SCScore.WARM_PAD,
    SCScore.HALO_PAD,
    SCScore.TUBULAR_BELL,
    SCScore.TIMPANI,
    SCScore.MARIMBA,
    SCScore.GLOCKENSPIEL,
    SCScore.PIANO,
    SCScore.ELECTRIC_PIANO,
    SCScore.HARPSICHORD,
    SCScore.MUTED_GUITAR,
    SCScore.BRIGHT_ACOUSTIC,
    SCScore.OCARINA,
    SCScore.ALTO_SAX,
    SCScore.VIOLIN
  };
  
  for(int i = 0; i < 16; i++) {
    instruments.put(new Integer(i), new Integer((int) voices[i]));
  }
  
  
  for(Event event : events) {
    if(config.pid != null) {
      from_min = 0;
      from_max = 5;
      
      if(config.pid.equals("pitch")) {
        event.pitch = map(event.pid, from_min, from_max, 0, 90);
      }
      else if(config.pid.equals("duration")) {
        event.duration = map(event.pid, from_min, from_max, duration_min, duration_max);
      }
      else if(config.pid.equals("volume")) {
        event.volume = map(event.pid, from_min, from_max, 0, 127);
      }
      else if(config.pid.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.pid, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.charge != null) {
      from_min = -1;
      from_max = 1;
      
      if(config.charge.equals("pitch")) {
        event.pitch = map(event.charge, from_min, from_max, 0, 90);
      }
      else if(config.charge.equals("duration")) {
        event.duration = map(event.charge, from_min, from_max, duration_min, duration_max);
      }
      else if(config.charge.equals("volume")) {
        event.volume = map(event.charge, from_min, from_max, 0, 127);
      }
      else if(config.charge.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.charge, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.energy != null) {
      from_min = 0;
      from_max = 5;
      
      if(config.energy.equals("pitch")) {
        event.pitch = map(event.e, from_min, from_max, 0, 90);
      }
      else if(config.energy.equals("duration")) {
        event.duration = map(event.e, from_min, from_max, duration_min, duration_max);
      }
      else if(config.energy.equals("volume")) {
        event.volume = map(event.e, from_min, from_max, 0, 127);
      }
      else if(config.energy.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.e, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.px != null) {
      // px:	from(-3.869)	to(2.042)
      from_min = -4;
      from_max = 2.1;
      
      if(config.px.equals("pitch")) {
        event.pitch = map(event.px, from_min, from_max, 0, 90);
      }
      else if(config.px.equals("duration")) {
        event.duration = map(event.px, from_min, from_max, duration_min, duration_max);
      }
      else if(config.px.equals("volume")) {
        event.volume = map(event.px, from_min, from_max, 0, 127);
      }
      else if(config.px.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.px, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.py != null) {
      // py:	from(-2.537)	to(1.742)
      from_min = -2.6;
      from_max = 1.8;
      
      if(config.py.equals("pitch")) {
        event.pitch = map(event.py, from_min, from_max, 0, 90);
      }
      else if(config.py.equals("duration")) {
        event.duration = map(event.py, from_min, from_max, duration_min, duration_max);
      }
      else if(config.py.equals("volume")) {
        event.volume = map(event.py, from_min, from_max, 0, 127);
      }
      else if(config.py.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.py, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.pz != null) {
      // z:	from(-2.172359)	to(2.05191)
      from_min = -2.2;
      from_max = 2.1;
      
      if(config.pz.equals("pitch")) {
        event.pitch = map(event.pz, from_min, from_max, 0, 90);
      }
      else if(config.pz.equals("duration")) {
        event.duration = map(event.pz, from_min, from_max, duration_min, duration_max);
      }
      else if(config.pz.equals("volume")) {
        event.volume = map(event.pz, from_min, from_max, 0, 127);
      }
      else if(config.pz.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.pz, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.r != null) {
      from_min = 0;
      from_max = 20;
      
      if(config.r.equals("pitch")) {
        event.pitch = map(event.radius, from_min, from_max, 0, 90);
      }
      else if(config.r.equals("duration")) {
        event.duration = map(event.radius, from_min, from_max, duration_min, duration_max);
      }
      else if(config.r.equals("volume")) {
        event.volume = map(event.radius, from_min, from_max, 0, 127);
      }
      else if(config.r.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.radius, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.t != null) {
      // time:	from(0.2)	to(137.1)
      from_min = 0.2;
      from_max = 140;
      
      if(config.t.equals("pitch")) {
        event.pitch = map(event.time, from_min, from_max, 0, 90);
      }
      else if(config.t.equals("duration")) {
        event.duration = map(event.time, from_min, from_max, duration_min, duration_max);
      }
      else if(config.t.equals("volume")) {
        event.volume = map(event.time, from_min, from_max, 0, 127);
      }
      else if(config.t.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.time, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.x != null) {
      // x:	from(-2.280098)	to(2.279904)
      from_min = -2.3;
      from_max = 2.3;
      
      if(config.x.equals("pitch")) {
        event.pitch = map(event.x, from_min, from_max, 0, 90);
      }
      else if(config.x.equals("duration")) {
        event.duration = map(event.x, from_min, from_max, duration_min, duration_max);
      }
      else if(config.x.equals("volume")) {
        event.volume = map(event.x, from_min, from_max, 0, 127);
      }
      else if(config.x.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.x, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.y != null) {
      from_min = -2.3;
      from_max = 2.3;
      
      if(config.y.equals("pitch")) {
        event.pitch = map(event.y, from_min, from_max, 0, 90);
      }
      else if(config.y.equals("duration")) {
        event.duration = map(event.y, from_min, from_max, duration_min, duration_max);
      }
      else if(config.y.equals("volume")) {
        event.volume = map(event.y, from_min, from_max, 0, 127);
      }
      else if(config.y.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.y, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.z != null) {
      from_min = -2.3;
      from_max = 2.3;
      
      if(config.z.equals("pitch")) {
        event.pitch = map(event.z, from_min, from_max, 0, 90);
      }
      else if(config.z.equals("duration")) {
        event.duration = map(event.z, from_min, from_max, duration_min, duration_max);
      }
      else if(config.z.equals("volume")) {
        event.volume = map(event.z, from_min, from_max, 0, 127);
      }
      else if(config.z.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.z, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.r != null) {
      // r:	from(0.100008)	to(2.3)
      from_min = 0.1;
      from_max = 2.3;
      
      if(config.r.equals("pitch")) {
        event.pitch = map(event.r, from_min, from_max, 0, 90);
      }
      else if(config.r.equals("duration")) {
        event.duration = map(event.r, from_min, from_max, duration_min, duration_max);
      }
      else if(config.r.equals("volume")) {
        event.volume = map(event.r, from_min, from_max, 0, 127);
      }
      else if(config.r.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.r, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.pt != null) {
      // pt:	from(-0.96023)	to(0.898893)
      from_min = -1.0;
      from_max = 0.9;
      
      if(config.pt.equals("pitch")) {
        event.pitch = map(event.pt, from_min, from_max, 0, 90);
      }
      else if(config.pt.equals("duration")) {
        event.duration = map(event.pt, from_min, from_max, duration_min, duration_max);
      }
      else if(config.pt.equals("volume")) {
        event.volume = map(event.pt, from_min, from_max, 0, 127);
      }
      else if(config.pt.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.pt, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
    if(config.pp != null) {
      // pp:	from(-1.56715)	to(1.568088)
      from_min = -HALF_PI;
      from_max = HALF_PI;
      
      if(config.pp.equals("pitch")) {
        event.pitch = map(event.pp, from_min, from_max, 0, 90);
      }
      else if(config.pp.equals("duration")) {
        event.duration = map(event.pp, from_min, from_max, duration_min, duration_max);
      }
      else if(config.pp.equals("volume")) {
        event.volume = map(event.pp, from_min, from_max, 0, 127);
      }
      else if(config.pp.equals("instrument")) {
        event.instrument = instruments.get((int) map(event.pp, from_min, from_max, 0, 15));
        
        if(channels.get(event.instrument) != null) {
          event.channel = channels.get(new Integer((int) event.instrument));
        }
        else {
          int channel = channels.size();
          channels.put(new Integer((int) event.instrument), new Integer(channel));
          event.channel = channel;
        }
      }
      
      event.tick = round(map(event.time, 0, 140, 0, score_length));
    }
  }
}

void loadEvents() {
  String[] lines = loadStrings("data/" + dataset + datafile + ".csv");
  for(int i = 1; i < lines.length; i++) {
    Event e = new Event();
    
    String[] pieces = split(lines[i], ",");
    e.id = Integer.parseInt(pieces[0]);
    e.pid = Integer.parseInt(pieces[1]);
    e.charge = Integer.parseInt(pieces[2]);
    e.e = Float.parseFloat(pieces[3]);
    e.px = Float.parseFloat(pieces[4]);
    e.py = Float.parseFloat(pieces[5]);
    e.pz = Float.parseFloat(pieces[6]);
    e.radius = Integer.parseInt(pieces[7]);
    e.time = Float.parseFloat(pieces[8]);
    e.x = Float.parseFloat(pieces[9]);
    e.y = Float.parseFloat(pieces[10]);
    e.z = Float.parseFloat(pieces[11]);
    e.r = Float.parseFloat(pieces[12]);
    e.pt = Float.parseFloat(pieces[13]);
    e.pp = Float.parseFloat(pieces[14]);
    events.add(e);
  }
}
