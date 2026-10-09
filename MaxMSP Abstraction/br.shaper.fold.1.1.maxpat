{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   85.0,
   104.0,
   1000.0,
   480.0
  ],
  "openinpresentation": 0,
  "description": "br.shaper.fold.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
  "boxes": [
   {
    "box": {
     "id": "obj-signature",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      800.0,
      15.0,
      520.0,
      100.0
     ],
     "linecount": 5,
     "text": "br.shaper.fold.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit."
    }
   },
   {
    "box": {
     "id": "obj-1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      380.0,
      15.0,
      60.0,
      20.0
     ],
     "text": "fold"
    }
   },
   {
    "box": {
     "maxclass": "inlet",
     "id": "obj-2",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      15.0,
      15.0,
      30.0,
      30.0
     ],
     "comment": "Input (Signal) audio or LFO to shape",
     "index": 1
    }
   },
   {
    "box": {
     "maxclass": "inlet",
     "id": "obj-3",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      140.0,
      15.0,
      30.0,
      30.0
     ],
     "comment": "Drive (Signal/Float) 1 - 64. How hard the signal is pushed into the shaper: 1 = a full-scale input just reaches the edge; higher = more folds. Above ~10, keep Drive x pitch under ~10-15 kHz to stay clean. Default 2",
     "index": 2
    }
   },
   {
    "box": {
     "maxclass": "inlet",
     "id": "obj-4",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      265.0,
      15.0,
      30.0,
      30.0
     ],
     "comment": "Mix (Signal/Float) 0 - 1. 0 = dry input, 1 = fully shaped. Default 1",
     "index": 3
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "id": "obj-7",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      15.0,
      80.0,
      280.0,
      22.0
     ],
     "text": "gen~ @title br.shaper.fold.1.1",
     "fontname": "Arial",
     "fontsize": 12.0,
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 0,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "dsp.gen",
      "rect": [
       100.0,
       100.0,
       600.0,
       450.0
      ],
      "bglocked": 0,
      "openinpresentation": 0,
      "default_fontsize": 12.0,
      "default_fontface": 0,
      "default_fontname": "Arial",
      "gridonopen": 1,
      "gridsize": [
       15.0,
       15.0
      ],
      "gridsnaponopen": 1,
      "objectsnaponopen": 1,
      "statusbarvisible": 2,
      "toolbarvisible": 1,
      "lefttoolbarpinned": 0,
      "toptoolbarpinned": 0,
      "righttoolbarpinned": 0,
      "bottomtoolbarpinned": 0,
      "toolbars_unpinned_last_save": 0,
      "tallnewobj": 0,
      "boxanimatetime": 200,
      "enablehscroll": 1,
      "enablevscroll": 1,
      "devicewidth": 0.0,
      "description": "",
      "digest": "",
      "tags": "",
      "style": "",
      "subpatcher_template": "",
      "assistshowspatchername": 0,
      "boxes": [
       {
        "box": {
         "maxclass": "newobj",
         "id": "obj-1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          20.0,
          30.0,
          22.0
         ],
         "text": "in 1 @comment signal",
         "fontname": "Arial",
         "fontsize": 12.0
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "id": "obj-2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          130.0,
          20.0,
          30.0,
          22.0
         ],
         "text": "in 2 @comment drive @default 2 @min 0 @max 64",
         "fontname": "Arial",
         "fontsize": 12.0
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "id": "obj-3",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          210.0,
          20.0,
          30.0,
          22.0
         ],
         "text": "in 3 @comment mix 0-1 @default 1 @min 0 @max 1",
         "fontname": "Arial",
         "fontsize": 12.0
        }
       },
       {
        "box": {
         "maxclass": "codebox",
         "id": "obj-4",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          80.0,
          400.0,
          200.0
         ],
         "parameter_enable": 0,
         "code": "// br.shaper.fold.1.1 -- triangle wavefolder, mono\n// Antialiased with 1st-order ADAA: each output sample is the average of the curve between\n//   the last input sample and this one: difference of the antiderivative / difference of the input,\n//   which removes most of the aliasing that hard folds and corners cause.\n// Drive and Mix glide 10 ms inside, so moving them never clicks. No DC filtering: LFOs pass untouched.\n// Every stored value is read first and written last, never read after a write.\n// in1 signal, in2 drive, in3 mix 0-1\n// out1 shaped signal\n\nHistory x1(0);\nHistory F1(0);\nHistory drive_s(2);\nHistory mixv_s(1);\nHistory c_c(0);\nHistory sr_last(0);\n\n// --- 10 ms glide coefficient: once, and again if the samplerate changes ---\nsr = samplerate;\nc = c_c;\nif (sr != sr_last) {\n\tc = 1 - exp(-1 / (0.01 * sr));\n}\n\ndrive = drive_s + c * (clip(in2, 0, 64) - drive_s);\nmixv = mixv_s + c * (clip(in3, 0, 1) - mixv_s);\n\nx = in1 * drive;\n// antiderivative reduced to one 4-wide period: its area per period is zero, so it repeats exactly\nx0 = wrap(x, -1, 3);\nF = (x0 <= 1) ? (x0 * x0 * 0.5) : (2 * x0 - x0 * x0 * 0.5 - 1);\ndx = x - x1;\nwet = (abs(dx) < 1e-6) ? fold((0.5 * (x + x1)), -1, 1) : (F - F1) / dx;\n\nout1 = in1 + mixv * (wet - in1);\n\nx1 = x;\nF1 = F;\ndrive_s = drive;\nmixv_s = mixv;\nc_c = c;\nsr_last = sr;\n",
         "fontname": "Arial",
         "fontsize": 12.0
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "id": "obj-5",
         "numinlets": 1,
         "numoutlets": 0,
         "outlettype": [],
         "patching_rect": [
          50.0,
          320.0,
          30.0,
          22.0
         ],
         "text": "out 1 @comment shaped out",
         "fontname": "Arial",
         "fontsize": 12.0
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-1",
          0
         ],
         "destination": [
          "obj-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-2",
          0
         ],
         "destination": [
          "obj-4",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-3",
          0
         ],
         "destination": [
          "obj-4",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          0
         ],
         "destination": [
          "obj-5",
          0
         ]
        }
       }
      ],
      "dependency_cache": [],
      "autosave": 0
     },
     "varname": "br_shaper_fold"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      170.0,
      460.0,
      20.0
     ],
     "text": "one gen~, mono; drive and mix glide 10 ms inside"
    }
   },
   {
    "box": {
     "maxclass": "outlet",
     "id": "obj-9",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      15.0,
      125.0,
      30.0,
      30.0
     ],
     "comment": "Output (Signal) shaped signal",
     "index": 1
    }
   },
   {
    "box": {
     "id": "obj-why",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      380.0,
      45.0,
      400.0,
      87.0
     ],
     "text": "The plain object: Drive and Mix go straight into gen~, so they take numbers OR signals. An LFO patched into Drive sweeps the shape smoothly; both glide 10 ms inside gen~, so jumps never click. [br.shaper.fold.ui.1.1] wraps this file with dials and a State outlet.",
     "linecount": 6
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-7",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-7",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   }
  ]
 }
}