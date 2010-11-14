/**
 * Example of how MIDI events can be sent directly, or scheduled in a score.
 * The program assumes you have an external MIDI device and you may need to
 * change the channel and controller number settings for your device.
 * Unusually, the callbackID is used as a data value for the controller.
 *
 * A SoundCipher example by Andrew R. Brown
 */

import arb.soundcipher.*;

SoundCipher sc = new SoundCipher(this);
SCScore score;
float channel = 0;
float controller = 81;

String[] lines;
int index = 0;

void setup() {

    // Read in a file
    lines = loadStrings("events_1.txt");

    sc.getMidiDeviceInfo();
    sc.setMidiDeviceOutput(1);
    score = new SCScore();
    score.addCallbackListener(this);
    score.addCallback(1, 0);
    score.addCallback(2, 127);

    //int instruments[10] = {ACOUSTIC_GUITAR, PIANO,PIANO, PIANO, PIANO,PIANO, PIANO, PIANO,PIANO, PIANO};

    int count = 0;
    for (int i = 0; i < lines.length; i++) {
        String[] vals = split(lines[i], ' ');

        if (vals.length>1)
        {
            float energy = float(vals[3]);
            float time = float(vals[8]);
            float radius = float(vals[12]);
            int pid = int(vals[1]);
            int detector = int(vals[7]);

            //println(detector);

            //println(vals[0]);
            //println(vals[1]);
            //println(vals[8]);

            // Normalize the energy
            energy /= 2.0;
            energy *=200;

            // Normalize the time
            time *= 2.0;

            // Normalize the radius
            radius /= 2.5;
            radius *= 127;

            float pitch = radius;

            float volume = energy;

            int channel = 1;

            double instrument = 1.0;
            if (detector<20.0)
            {
                //instrument = instruments[0];
                instrument = SCScore.ACOUSTIC_GUITAR;
                //println(detector + " " + instrument);
                channel = 1;
            }
            else
            {
                instrument = SCScore.DRUM;
                channel = 2;
            }
            println(detector + " " + instrument);



            double articulation = 1.0;
            double pan = 64.0;

            score.addNote(time, channel, instrument, pitch, volume, 5, articulation, pan);
        }

    }


    //score.addNote(1, 60, 100, 5);
    //score.addNote(2, 72, 100, 5);
    //score.addNote(3, 79, 100, 9);
    score.play();
    }

    void draw() {
        //background(180);
        //rect(mouseX-5, mouseY-5, 10, 10);
    }

    void mouseDragged() {
        //sc.sendMidi(sc.CONTROL_CHANGE, channel, controller, mouseY);
    }

    void handleCallbacks(int callbackID) {
        //sc.sendMidi(sc.CONTROL_CHANGE, channel, controller, callbackID);
    }

