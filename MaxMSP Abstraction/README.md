# Max/MSP Abstractions:   
## br.shaper.1.1



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.shaper.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.shaper](https://github.com/guaguanco127/br.shaper)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Table of Contents 

[What's new in 1.1](#New11)  
[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[Credits](#Credits)  
 
 

## <a name="New11"></a>What's new in 1.1

- **Two files per shape:** br.shaper.&lt;shape&gt;.1.1 is the plain object, whose Drive and Mix inlets take signals as well as numbers (patch an LFO into Drive), and br.shaper.&lt;shape&gt;.ui.1.1 is the version with dials, for a [bpatcher]. Shapes: fold, wrap, clip, buchla, multi.
- **State outlet** on the .ui versions (the last outlet): sends drive and mix (and mode on multi) as named messages the moment they change.
- New RNBO patches, one per shape, to build your own Max external or VST/AU plugin.
- New example tabs: plain object and State outlet; multi is now the first tab, and the lfo tab adds the plain multi with an LFO on Drive.
- Inlets, the Output outlet and the sound are unchanged. If you used 1.0 in a [bpatcher], choose the .ui.1.1 file; if you used it as an object box, type the plain name (for example br.shaper.fold.1.1).

## <a name="About"></a>About

A family of mono waveshapers for Max/MSP, built in gen~, for synthesis: audio oscillators and LFOs alike. There is one abstraction per shape, plus br.shaper.multi, which has every shape in one.

| Shape | What it does |
|---|---|
| fold | Triangle wavefolder: past the edge, the wave folds back toward the center |
| wrap | Wrapper: past the edge, the wave jumps to the other side and keeps going |
| clip | Hard clipper: past the edge, the wave is held flat |
| buchla | Sine wavefolder, Buchla-style: rounder folds than fold |
| multi | Every shape above in one, chosen with a Mode menu |

**Antialiased:** Every shape uses first-order ADAA (antiderivative antialiasing): each output sample is the average of the shape between the last input sample and this one, which removes most of the aliasing that hard folds and corners cause.

**Click-free controls:** Drive and Mix always glide over 10 ms, so moving them never clicks. In br.shaper.multi, a Mode change crossfades over 20 ms.

**Mono, LFO-safe:** One signal in, one out. There is no DC filter, so an LFO keeps its full shape and center.

**Light on CPU:** br.shaper.multi only computes the shape you've chosen (both shapes during a crossfade).

### Controls

**Drive:** How hard the signal is pushed into the shape, from 1 to 64. At 1, a full-scale input just reaches the edge; higher means more folds, wraps or clipping. The dial is curved, so most of its travel covers 1 to 10. Drive is applied to the input, so a quieter input needs more Drive for the same effect. The default is 2.

**Mix:** 0 is the dry input, 1 is fully shaped. The default is 1.

**Mode** (multi only): 0 fold, 1 wrap, 2 clip, 3 buchla. The default is 0 (fold).

### How high can Drive go?

For fold, wrap and buchla, Drive is roughly the number of folds per cycle, so the new ripples sit near Drive x pitch. Keep Drive x pitch under about 10 - 15 kHz and the sound stays clean: a 110 Hz bass is fine at 64, while at 440 Hz aliasing starts around 25 - 35. LFOs have no limit. Clip is almost a square wave by Drive 20, so more changes little.

## <a name="Files"></a>Which file?

Every shape (fold, wrap, clip, buchla, multi) comes as two files:

| File | What it is |
|---|---|
| br.shaper.&lt;shape&gt;.1.1 | Plain object, no UI. Drive and Mix take numbers or signals. Inlets: Input, Drive, Mix (multi adds Mode). Outlet: Output |
| br.shaper.&lt;shape&gt;.ui.1.1 | The same with dials (and multi's Mode menu) and a State outlet, ready for a [bpatcher]. Controls take numbers |
| _br.shaper.example.1.1 | Example patch: open this first |

Each .ui file contains its plain object, so keep them together. Each plain object and its .ui have the same inlets and outlets in the same order (the .ui adds State last), so they swap without rewiring.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy the files for the shapes you want into the same folder as the Max patch you are using, for example br.shaper.fold.1.1.maxpat + br.shaper.fold.ui.1.1.maxpat (each .ui uses its plain object).

3. For the version with dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the .ui file (for example br.shaper.fold.ui.1.1.maxpat). Size the bpatcher to 110 x 79 to show all of the controls (117 x 79 for multi).

4. For the plain object, create an object with its name (for example: br.shaper.fold.1.1, do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

The first inlet is your signal: audio or an LFO. Every control has its own inlet after that, in the same order as the dials. On the .ui files, sending a value to an inlet moves its on-screen dial too, so the display always matches the sound. On the plain objects, Drive and Mix also take signals (Float below = Signal too). Values outside a dial's range are limited to that range. Hover over an inlet in Max to see its range and default.

Every shape starts with the same three inlets (Input, Drive, Mix), so you can swap one shape for another without rewiring them.

**fold, wrap, clip, buchla**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Input | Signal | audio or LFO | |
| 2 | Drive | Float | 1 - 64 | 2 |
| 3 | Mix | Float | 0 - 1 | 1 |

**multi**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Input | Signal | audio or LFO | |
| 2 | Drive | Float | 1 - 64 | 2 |
| 3 | Mix | Float | 0 - 1 | 1 |
| 4 | Mode | Int | 0 - 3 | 0 (fold) |

**Outlets (all shapes)**

| Outlet | Name | Type |
|---|---|---|
| 1 | Output | Signal |
| 2 | State (.ui only): the settings as named messages, see [State outlet](#State) | Message |

For stereo, use one abstraction per channel.

## <a name="State"></a>State outlet

The last outlet of every .ui file (State) sends the current settings as named messages the moment they change, for example `drive 8.`, `mix 0.5`, `mode 2`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route drive mix mode], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| drive | Float | 1 to 64 |
| mix | Float | 0 to 1 |
| mode (multi only) | Int | 0 fold, 1 wrap, 2 clip, 3 buchla |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The plain objects have no State outlet: whatever drives them already knows the values.

## <a name="Example"></a>Example Patch

Open _br.shaper.example.1.1.maxpat (keep it in the same folder as all the br.shaper files). The first page introduces the family; the tabs at the top hold the examples. Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **multi:** br.shaper.multi with its Mode menu. Switch modes while it plays: the change crossfades, so it never clicks.
- **singles:** The four shapes side by side, all fed by the same source (sine, saw or microphone, with a frequency box). The listen menu chooses which one you hear, with a 20 ms crossfade, and "dry" plays the unshaped source to compare. Raise Drive and watch the spectroscope~.
- **lfo:** A slow sine through br.shaper.multi, shown on a scope. Try each Mode with Drive around 3: fold bounces back at the ends, wrap jumps to the other end, clip holds at the ends, buchla rounds the bounces. On the right, the plain br.shaper.multi.1.1 gets a second LFO on Drive.
- **plain object:** all five plain objects with no dials on the same sources: one slow LFO (a signal) sweeps Drive from 1 to 15 on all of them while you listen, a number box sets Mix, a menu sets multi's Mode, and the listen menu picks which one you hear.
- **State outlet:** the multi tab's settings, read by name with [route drive mix mode] into number boxes.

## <a name="Credits"></a>Credits

Antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, "Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.
