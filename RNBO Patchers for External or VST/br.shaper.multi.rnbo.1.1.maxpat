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
   134.0,
   159.0,
   780.0,
   680.0
  ],
  "description": "br.shaper.multi.rnbo.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
  "autosave": 0,
  "boxes": [
   {
    "box": {
     "id": "obj-signature",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      218.0,
      40.0,
      520.0,
      33.0
     ],
     "text": "br.shaper.multi.rnbo.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      61.0,
      600.0,
      45.0,
      45.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-5",
     "lastchannelcount": 0,
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "outlettype": [
      "signal",
      "signal",
      "",
      "float",
      "list"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      61.0,
      450.0,
      48.0,
      136.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        -70.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Out",
       "parameter_mmax": 6.0,
       "parameter_mmin": -70.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Out",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "live.gain~"
    }
   },
   {
    "box": {
     "autosave": 1,
     "id": "obj-7",
     "inletInfo": {
      "IOInfo": [
       {
        "type": "signal",
        "index": 1,
        "tag": "in1",
        "comment": "Input (Signal) audio or LFO to shape"
       },
       {
        "type": "event",
        "index": 2,
        "tag": "in2",
        "comment": "Drive (Signal/Float) 1 - 64. How hard the signal is pushed into the shaper: 1 = a full-scale input just reaches the edge; higher = more folds/wraps/clipping. Above ~10, keep Drive x pitch under ~10-15 kHz to stay clean. Default 2"
       },
       {
        "type": "event",
        "index": 3,
        "tag": "in3",
        "comment": "Mix (Signal/Float) 0 - 1. 0 = dry input, 1 = fully shaped. Default 1"
       },
       {
        "type": "event",
        "index": 4,
        "tag": "in4",
        "comment": "Mode (Int) 0 fold, 1 wrap, 2 clip, 3 buchla. Switches crossfade over 20 ms. Default 0"
       }
      ]
     },
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 2,
     "outletInfo": {
      "IOInfo": [
       {
        "type": "signal",
        "index": 1,
        "tag": "out1",
        "comment": "Output (Signal) shaped signal"
       }
      ]
     },
     "outlettype": [
      "signal",
      "list"
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
      "classnamespace": "rnbo",
      "rect": [
       100.0,
       100.0,
       1300.0,
       480.0
      ],
      "default_fontname": "Lato",
      "title": "untitled",
      "boxes": [
       {
        "box": {
         "id": "obj-sin1",
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          30.0,
          20.0,
          190.0,
          23.0
         ],
         "rnbo_classname": "in~",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "in~_obj-sin1",
         "text": "in~ 1 @comment \"Input (Signal) audio or LFO to shape\""
        }
       },
       {
        "box": {
         "id": "obj-gen",
         "maxclass": "newobj",
         "text": "gen~ @title br.shaper.multi.1.1",
         "numinlets": 4,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          30.0,
          260.0,
          1100.0,
          23.0
         ],
         "rnbo_classname": "gen~",
         "rnbo_extra_attributes": {
          "exposeparams": 0
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "br.shaper.multi.1.1",
         "varname": "br.shaper.multi.1.1",
         "genpatcher": {
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
          }
         }
        }
       },
       {
        "box": {
         "id": "obj-sout1",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30.0,
          320.0,
          200.0,
          23.0
         ],
         "rnbo_classname": "out~",
         "rnbo_extra_attributes": {
          "meta": "",
          "comment": ""
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "out~_obj-sout1",
         "text": "out~ 1 @comment \"Output (Signal) shaped signal\""
        }
       },
       {
        "box": {
         "fontname": "Lato",
         "fontsize": 12.0,
         "id": "obj-note",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "linecount": 3,
         "patching_rect": [
          30.0,
          380.0,
          700.0,
          50.0
         ],
         "text": "gen~ code MUST MATCH br.shaper.multi.1.1 (open both: same gen~ patcher and codebox). Drive, Mix, Mode are the plugin parameters (VST/AU, web, external); each inlet sets its param, attrui in the parent shows them. I/O: Input, Drive, Mix, Mode / Output."
        }
       },
       {
        "box": {
         "id": "obj-ein2",
         "linecount": 3,
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          230.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "in_obj-ein2",
         "text": "in 2 @comment \"Drive (Signal/Float) 1 - 64. How hard the signal is pushed into the shaper: 1 = a full-scale input just reaches the edge; higher = more folds/wraps/clipping. Above ~10; keep Drive x pitch under ~10-15 kHz to stay clean. Default 2\""
        }
       },
       {
        "box": {
         "id": "pDrive",
         "linecount": 3,
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          230.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "",
          "fromnormalized": "",
          "exponent": 3.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 0.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 1,
         "rnbo_uniqueid": "Drive",
         "text": "param Drive 2 @min 1.0 @max 64.0 @exponent 3.0 @order 1",
         "varname": "Drive"
        }
       },
       {
        "box": {
         "id": "obj-ein3",
         "linecount": 3,
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          430.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 2,
         "rnbo_uniqueid": "in_obj-ein3",
         "text": "in 3 @comment \"Mix (Signal/Float) 0 - 1. 0 = dry input; 1 = fully shaped. Default 1\""
        }
       },
       {
        "box": {
         "id": "pMix",
         "linecount": 3,
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          430.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "",
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 0.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 2,
         "rnbo_uniqueid": "Mix",
         "text": "param Mix 1 @min 0.0 @max 1.0 @order 2",
         "varname": "Mix"
        }
       },
       {
        "box": {
         "id": "obj-ein4",
         "linecount": 3,
         "maxclass": "newobj",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          630.0,
          70.0,
          190.0,
          52.0
         ],
         "rnbo_classname": "in",
         "rnbo_extra_attributes": {
          "meta": ""
         },
         "rnbo_serial": 3,
         "rnbo_uniqueid": "in_obj-ein4",
         "text": "in 4 @comment \"Mode (Int) 0 fold; 1 wrap; 2 clip; 3 buchla. Switches crossfade over 20 ms. Default 0\""
        }
       },
       {
        "box": {
         "id": "pMode",
         "linecount": 3,
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "",
          ""
         ],
         "patching_rect": [
          630.0,
          140.0,
          180.0,
          52.0
         ],
         "rnbo_classname": "param",
         "rnbo_extra_attributes": {
          "enum": "fold wrap clip buchla",
          "fromnormalized": "",
          "exponent": 1.0,
          "displayname": "",
          "ctlin": -1.0,
          "tonormalized": "",
          "steps": 0.0,
          "unit": "",
          "sendinit": 1,
          "meta": "",
          "displayorder": "-",
          "preset": 1
         },
         "rnbo_serial": 3,
         "rnbo_uniqueid": "Mode",
         "text": "param Mode 0 @enum fold wrap clip buchla @order 3",
         "varname": "Mode"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-sin1",
          0
         ],
         "destination": [
          "obj-gen",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-gen",
          0
         ],
         "destination": [
          "obj-sout1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein2",
          0
         ],
         "destination": [
          "pDrive",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pDrive",
          0
         ],
         "destination": [
          "obj-gen",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein3",
          0
         ],
         "destination": [
          "pMix",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pMix",
          0
         ],
         "destination": [
          "obj-gen",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-ein4",
          0
         ],
         "destination": [
          "pMode",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "pMode",
          0
         ],
         "destination": [
          "obj-gen",
          3
         ]
        }
       }
      ]
     },
     "patching_rect": [
      54.0,
      400.0,
      340.0,
      22.0
     ],
     "rnboversion": "1.4.3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_invisible": 1,
       "parameter_longname": "rnbo~",
       "parameter_modmode": 0,
       "parameter_shortname": "rnbo~",
       "parameter_type": 3
      }
     },
     "saved_object_attributes": {
      "optimization": "O1",
      "parameter_enable": 1,
      "uuid": "02b86d86-f408-4820-9939-65303118b7a0"
     },
     "text": "rnbo~",
     "varname": "rnbo~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-export",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "linecount": 4,
     "patching_rect": [
      420.0,
      400.0,
      340.0,
      60.0
     ],
     "text": "EXPORT NAME: br.shaper.multi.1.1~\nMax External Export asks for a name: keep the ~ at the end."
    }
   },
   {
    "box": {
     "id": "obj-attr0",
     "maxclass": "attrui",
     "attr": "Drive",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      90.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-attr1",
     "maxclass": "attrui",
     "attr": "Mix",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      114.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-attr2",
     "maxclass": "attrui",
     "attr": "Mode",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      232.0,
      138.0,
      180.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-lfo-lm",
     "maxclass": "newobj",
     "text": "loadmess 1.",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      38.0,
      40.0,
      80.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-lfo-f",
     "maxclass": "flonum",
     "format": 6,
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      38.0,
      70.0,
      60.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-lfo-c",
     "maxclass": "comment",
     "text": "LFO Hz: starts at 1, raise it to shape audio",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      38.0,
      130.0,
      180.0,
      33.0
     ],
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-lfo",
     "maxclass": "newobj",
     "text": "cycle~",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      38.0,
      100.0,
      58.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-scope",
     "maxclass": "live.scope~",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      130.0,
      450.0,
      250.0,
      130.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-scope-c",
     "maxclass": "comment",
     "text": "shaped LFO, -1 to 1",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      130.0,
      585.0,
      150.0,
      20.0
     ]
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-5",
      0
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
      "obj-5",
      1
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      1
     ],
     "destination": [
      "obj-6",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-attr0",
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
      "obj-attr1",
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
      "obj-attr2",
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
      "obj-lfo-lm",
      0
     ],
     "destination": [
      "obj-lfo-f",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-lfo-f",
      0
     ],
     "destination": [
      "obj-lfo",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-lfo",
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
      "obj-7",
      0
     ],
     "destination": [
      "obj-scope",
      0
     ]
    }
   }
  ]
 }
}