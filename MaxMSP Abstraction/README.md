# Max/MSP Abstractions:   
## br.shaper.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.shaper.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.shaper](https://github.com/guaguanco127/br.shaper)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max 9. 

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[Example Patch](#Example)  
 
 

## <a name="About"></a>About

A family of mono waveshapers for Max/MSP, built in gen~, for synthesis: audio oscillators and LFOs alike. There is one abstraction per shape, plus br.shaper.multi, which has every shape in one.

| Abstraction | What it does |
|---|---|
| br.shaper.fold.1.0 | Triangle wavefolder: past the edge, the wave folds back toward the center |
| br.shaper.wrap.1.0 | Wrapper: past the edge, the wave jumps to the other side and keeps going |
| br.shaper.clip.1.0 | Hard clipper: past the edge, the wave is held flat |
| br.shaper.buchla.1.0 | Sine wavefolder, Buchla-style: rounder folds than fold |
| br.shaper.multi.1.0 | Every shape above in one, chosen with a Mode menu |

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

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste the abstractions you want (for example br.shaper.fold.1.0.maxpat) inside of the same folder as the Max patch you are using.

3. To use the built-in dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the abstraction located within the same folder as your project. Size the bpatcher to 110 x 79 to show all of the controls (117 x 79 for multi).

4. Alternatively, create an object with the abstraction's name (for example: [br.shaper.fold.1.0], do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

The first inlet is your signal: audio or an LFO. Every control has its own inlet after that, in the same order as the dials. Sending a value to an inlet moves its on-screen dial too, so the display always matches the sound. Values outside a dial's range are limited to that range. Hover over an inlet in Max to see its range and default.

Every abstraction starts with the same three inlets (Input, Drive, Mix), so you can swap one shape for another without rewiring them.

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

**Outlet (all abstractions)**

| Outlet | Name | Type |
|---|---|---|
| 1 | Output | Signal |

For stereo, use one abstraction per channel.

## <a name="Example"></a>Example Patch

Open _br.shaper.example.1.0.maxpat (keep it in the same folder as the abstractions). The first page introduces the family; the tabs at the top hold the examples. Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **singles:** The four shapes side by side, all fed by the same source (sine, saw or microphone, with a frequency box). The listen menu chooses which one you hear, with a 20 ms crossfade, and "dry" plays the unshaped source to compare. Raise Drive and watch the spectroscope~.
- **multi:** br.shaper.multi with its Mode menu. Switch modes while it plays: the change crossfades, so it never clicks.
- **lfo:** A slow sine through br.shaper.multi, shown on a scope. Try each Mode with Drive around 3: fold bounces back at the ends, wrap jumps to the other end, clip holds at the ends, buchla rounds the bounces.
