{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 1,
   "revision": 4,
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
  "description": "br.shaper.multi.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
  "boxes": [
   {
    "box": {
     "id": "obj-signature",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      950.0,
      15.0,
      520.0,
      100.0
     ],
     "linecount": 5,
     "text": "br.shaper.multi.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit."
    }
   },
   {
    "box": {
     "id": "obj-1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520.0,
      15.0,
      60.0,
      20.0
     ],
     "text": "Shaper"
    }
   },
   {
    "box": {
     "comment": "Input (Signal) audio or LFO to shape",
     "id": "obj-2",
     "index": 1,
     "maxclass": "inlet",
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
     ]
    }
   },
   {
    "box": {
     "comment": "Drive (Signal/Float) 1 - 64. How hard the signal is pushed into the shaper: 1 = a full-scale input just reaches the edge; higher = more folds/wraps/clipping. Above ~10, keep Drive x pitch under ~10-15 kHz to stay clean. Default 2",
     "id": "obj-3",
     "index": 2,
     "maxclass": "inlet",
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
     ]
    }
   },
   {
    "box": {
     "comment": "Mix (Signal/Float) 0 - 1. 0 = dry input, 1 = fully shaped. Default 1",
     "id": "obj-4",
     "index": 3,
     "maxclass": "inlet",
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
     ]
    }
   },
   {
    "box": {
     "comment": "Mode (Int) 0 fold, 1 wrap, 2 clip, 3 buchla. Switches crossfade over 20 ms. Default 0",
     "id": "obj-5",
     "index": 4,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      390.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 1,
       "revision": 4,
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
      "boxes": [
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-1",
         "linecount": 7,
         "maxclass": "newobj",
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
         "text": "in 1 @comment signal"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-2",
         "linecount": 18,
         "maxclass": "newobj",
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
         "text": "in 2 @comment drive @default 2 @min 0 @max 64"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-3",
         "linecount": 17,
         "maxclass": "newobj",
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
         "text": "in 3 @comment mix 0-1 @default 1 @min 0 @max 1"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-4",
         "linecount": 26,
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          290.0,
          20.0,
          30.0,
          22.0
         ],
         "text": "in 4 @comment mode 0 fold 1 wrap 2 clip 3 buchla @default 0 @min 0 @max 3"
        }
       },
       {
        "box": {
         "code": "// br.shaper.multi.1.1 -- fold, wrap, clip and buchla in one, mono\n// Antialiased with 1st-order ADAA: each output sample is the average of the curve between\n//   the last input sample and this one: difference of the antiderivative / difference of the input,\n//   which removes most of the aliasing that hard folds and corners cause.\n// Drive and Mix glide 10 ms inside, so moving them never clicks. No DC filtering: LFOs pass untouched.\n// Every stored value is read first and written last, never read after a write.\n// Mode switches crossfade over 20 ms. The antiderivative is computed fresh for both samples,\n//   nothing stored per mode, so a mode that was off starts clean, and modes that are off cost nothing.\n// in1 signal, in2 drive, in3 mix 0-1, in4 mode: 0 fold, 1 wrap, 2 clip, 3 buchla\n// out1 shaped signal\n\nHistory x1(0);\nHistory drive_s(2);\nHistory mixv_s(1);\nHistory g0_s(1);\nHistory g1_s(0);\nHistory g2_s(0);\nHistory g3_s(0);\nHistory c_c(0);\nHistory step_c(0);\nHistory sr_last(0);\n\n// --- glide constants: once, and again if the samplerate changes ---\nsr = samplerate;\nc = c_c;\nstep = step_c;\nif (sr != sr_last) {\n\tc = 1 - exp(-1 / (0.01 * sr));\n\tstep = 1 / (0.02 * sr);\n}\n\ndrive = drive_s + c * (clip(in2, 0, 64) - drive_s);\nmixv = mixv_s + c * (clip(in3, 0, 1) - mixv_s);\n\n// mode gates: each ramps linearly toward 1 when selected, else 0, over 20 ms\nmode = clip(floor(in4 + 0.5), 0, 3);\ng0 = g0_s + clip((mode == 0) - g0_s, -step, step);\ng1 = g1_s + clip((mode == 1) - g1_s, -step, step);\ng2 = g2_s + clip((mode == 2) - g2_s, -step, step);\ng3 = g3_s + clip((mode == 3) - g3_s, -step, step);\n\nx = in1 * drive;\ndx = x - x1;\nsmall = abs(dx) < 1e-6;\nxm = 0.5 * (x + x1);\nwet = 0;\nxa = 0;\nxb = 0;\nFa = 0;\nFb = 0;\nw = 0;\n\n// 0 fold: triangle wavefolder\nif (g0 > 0) {\n\txa = wrap(x, -1, 3);\n\txb = wrap(x1, -1, 3);\n\tFa = (xa <= 1) ? (xa * xa * 0.5) : (2 * xa - xa * xa * 0.5 - 1);\n\tFb = (xb <= 1) ? (xb * xb * 0.5) : (2 * xb - xb * xb * 0.5 - 1);\n\tw = small ? fold(xm, -1, 1) : (Fa - Fb) / dx;\n\twet = wet + g0 * w;\n}\n// 1 wrap: wrapper: overflow comes back from the other side\nif (g1 > 0) {\n\txa = wrap(x, -1, 1);\n\txb = wrap(x1, -1, 1);\n\tFa = xa * xa * 0.5;\n\tFb = xb * xb * 0.5;\n\tw = small ? wrap(xm, -1, 1) : (Fa - Fb) / dx;\n\twet = wet + g1 * w;\n}\n// 2 clip: hard clipper\nif (g2 > 0) {\n\tFa = (x <= -1) ? (-x - 0.5) : ((x < 1) ? (x * x * 0.5) : (x - 0.5));\n\tFb = (x1 <= -1) ? (-x1 - 0.5) : ((x1 < 1) ? (x1 * x1 * 0.5) : (x1 - 0.5));\n\tw = small ? clip(xm, -1, 1) : (Fa - Fb) / dx;\n\twet = wet + g2 * w;\n}\n// 3 buchla: sine wavefolder, Buchla-style\nif (g3 > 0) {\n\tFa = -cos(1.5707963267948966 * x) * 0.6366197723675814;\n\tFb = -cos(1.5707963267948966 * x1) * 0.6366197723675814;\n\tw = small ? sin(1.5707963267948966 * xm) : (Fa - Fb) / dx;\n\twet = wet + g3 * w;\n}\n\nout1 = in1 + mixv * (wet - in1);\n\nx1 = x;\ndrive_s = drive;\nmixv_s = mixv;\ng0_s = g0;\ng1_s = g1;\ng2_s = g2;\ng3_s = g3;\nc_c = c;\nstep_c = step;\nsr_last = sr;\n",
         "fontface": 0,
         "fontname": "<Monospaced>",
         "fontsize": 12.0,
         "id": "obj-5",
         "maxclass": "codebox",
         "numinlets": 4,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          80.0,
          400.0,
          200.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-6",
         "linecount": 9,
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          50.0,
          320.0,
          30.0,
          22.0
         ],
         "text": "out 1 @comment shaped out"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "destination": [
          "obj-5",
          0
         ],
         "source": [
          "obj-1",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-5",
          1
         ],
         "source": [
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-5",
          2
         ],
         "source": [
          "obj-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-5",
          3
         ],
         "source": [
          "obj-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-6",
          0
         ],
         "source": [
          "obj-5",
          0
         ]
        }
       }
      ]
     },
     "patching_rect": [
      15.0,
      80.0,
      405.0,
      22.0
     ],
     "text": "gen~ @title br.shaper.multi.1.1",
     "varname": "br_shaper_multi"
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
     "text": "one gen~, mono; drive and mix glide 10 ms inside; mode crossfades 20 ms"
    }
   },
   {
    "box": {
     "comment": "Output (Signal) shaped signal",
     "id": "obj-11",
     "index": 1,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      125.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-why",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520.0,
      45.0,
      400.0,
      87.0
     ],
     "text": "The plain object: Drive and Mix go straight into gen~, so they take numbers OR signals. An LFO patched into Drive sweeps the shape smoothly; both glide 10 ms inside gen~, so jumps never click. Mode (0 fold, 1 wrap, 2 clip, 3 buchla) crossfades over 20 ms. [br.shaper.multi.ui.1.1] wraps this file with dials and a State outlet.",
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
      "obj-9",
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
      "obj-9",
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
      "obj-9",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-9",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   }
  ]
 }
}