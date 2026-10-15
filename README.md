# Max/MSP Patches, Abstractions, Externals, RNBO and VSTs

## br.shaper.1.1



By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.shaper.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.shaper](https://github.com/guaguanco127/br.shaper)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[What's new in 1.1](#New11)  
[About](#About)   
[State outlet](#State)  
[Max/MSP Abstractions](https://github.com/guaguanco127/br.shaper/tree/main/MaxMSP%20Abstraction) To use as abstractions within Max/MSP   
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.shaper/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external or VST/AU plugin, or to reuse the code in your own RNBO patches (needs RNBO)  

You can use them as abstractions within Max/MSP. With RNBO you can also build your own Max external or plugin from the included RNBO patches.

## <a name="New11"></a>What's new in 1.1

- **Two files per shape:** br.shaper.&lt;shape&gt;.1.1 is the plain object, whose Drive and Mix inlets take signals as well as numbers (patch an LFO into Drive), and br.shaper.&lt;shape&gt;.ui.1.1 is the version with dials, for a [bpatcher]. Shapes: fold, wrap, clip, buchla, multi.
- **State outlet** on the .ui versions (the last outlet): sends drive and mix (and mode on multi) as named messages the moment they change.
- New RNBO patches, one per shape, to build your own Max external or VST/AU plugin.
- New example tabs: plain object and State outlet; multi is now the first tab, and the lfo tab adds the plain multi with an LFO on Drive.
- Inlets, the Output outlet and the sound are unchanged. If you used 1.0 in a [bpatcher], choose the .ui.1.1 file; if you used it as an object box, type the plain name (for example br.shaper.fold.1.1).

## <a name="About"></a>About

A family of mono waveshapers for Max/MSP, built in gen~, for synthesis: audio oscillators and LFOs alike. There is one abstraction per shape, plus br.shaper.multi, which has every shape in one:

| Shape | What it does |
|---|---|
| fold | Triangle wavefolder: past the edge, the wave folds back toward the center |
| wrap | Wrapper: past the edge, the wave jumps to the other side and keeps going |
| clip | Hard clipper: past the edge, the wave is held flat |
| buchla | Sine wavefolder, Buchla-style: rounder folds than fold |
| multi | Every shape above in one, chosen with a Mode menu |

**Antialiased:** Every shape uses first-order ADAA (antiderivative antialiasing), so high Drive doesn't fill the spectrum with aliasing.

**Click-free controls:** Drive and Mix always glide over 10 ms. In br.shaper.multi, a Mode change crossfades over 20 ms.

**Mono, LFO-safe:** One signal in, one out. There is no DC filter, so an LFO keeps its full shape and center.

**Light on CPU:** br.shaper.multi only computes the shape you've chosen (both shapes during a crossfade).

**Signal control:** The plain objects take signals in Drive and Mix, so an LFO or envelope can sweep the shaping.

**Pairs with br.tanh:** The inlets (Input, Drive, Mix) match [br.tanh](https://github.com/guaguanco127/br.tanh)'s, so you can swap between them without rewiring.

The example patch (_br.shaper.example.1.1.maxpat) has tabs for br.shaper.multi, the four shapes side by side, a shaped LFO on a scope, the plain objects with an LFO on Drive, and the State outlet.

## <a name="State"></a>State outlet

The last outlet of every .ui file (State) sends the current settings as named messages the moment they change, for example `drive 8.`, `mix 0.5`, `mode 2`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route drive mix mode]. Repeats are filtered out.

## <a name="Credits"></a>Credits

Antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, "Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.
