import netscape.javascript.*;
import netscape.javascript.JSException;

import arb.soundcipher.*;
import arb.soundcipher.constants.*;

JSObject window;
SCScore score = new SCScore();

void setup() {
  size(200, 200);
  println(getParameter("test_string"));
}

void draw() { }

void loadConfig(JSObject config) {
}

