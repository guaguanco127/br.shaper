# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.shaper.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.shaper.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.shaper](https://github.com/guaguanco127/br.shaper)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max 9. 

## Links

[About](#About)   
[Max/MSP Abstractions](https://github.com/guaguanco127/br.shaper/tree/main/MaxMSP%20Abstraction) To use as abstractions within Max/MSP   

This is a Max/MSP-only release (no Max for Live device).

## <a name="About"></a>About

A family of mono waveshapers for Max/MSP, built in gen~, for synthesis: audio oscillators and LFOs alike. There is one abstraction per shape, plus br.shaper.multi, which has every shape in one:

| Abstraction | What it does |
|---|---|
| br.shaper.fold.1.0 | Triangle wavefolder: past the edge, the wave folds back toward the center |
| br.shaper.wrap.1.0 | Wrapper: past the edge, the wave jumps to the other side and keeps going |
| br.shaper.clip.1.0 | Hard clipper: past the edge, the wave is held flat |
| br.shaper.buchla.1.0 | Sine wavefolder, Buchla-style: rounder folds than fold |
| br.shaper.multi.1.0 | Every shape above in one, chosen with a Mode menu |

**Antialiased:** Every shape uses first-order ADAA (antiderivative antialiasing), so high Drive doesn't fill the spectrum with aliasing.

**Click-free controls:** Drive and Mix always glide over 10 ms. In br.shaper.multi, a Mode change crossfades over 20 ms.

**Mono, LFO-safe:** One signal in, one out. There is no DC filter, so an LFO keeps its full shape and center.

**Light on CPU:** br.shaper.multi only computes the shape you've chosen (both shapes during a crossfade).

The example patch (_br.shaper.example.1.0.maxpat) has a tab with the four shapes side by side, a tab for br.shaper.multi, and a tab with a shaped LFO on a scope.
