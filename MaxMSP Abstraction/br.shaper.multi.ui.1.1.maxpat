{
 "patcher": {
  "description": "br.shaper.multi.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 1,
   "revision": 4,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "openrect": [
   85.0,
   104.0,
   117.0,
   80.0
  ],
  "openrectmode": 0,
  "openinpresentation": 1,
  "devicewidth": 117.0,
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
     "text": "br.shaper.multi.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
     "linecount": 5
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      15.0,
      51.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      53.0,
      20.0
     ],
     "text": "Shaper",
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
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
     "comment": "Drive (Float) 1 - 64. How hard the signal is pushed into the shaper: 1 = a full-scale input just reaches the edge; higher = more folds/wraps/clipping. Above ~10, keep Drive x pitch under ~10-15 kHz to stay clean. Default 2",
     "id": "obj-3",
     "index": 2,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      90.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Mix (Float) 0 - 1. 0 = dry input, 1 = fully shaped. Default 1",
     "id": "obj-4",
     "index": 3,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      260.0,
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
      430.0,
      15.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-6",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      90.0,
      50.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      4.5,
      25.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_exponent": 3.0,
       "parameter_initial": [
        2.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Drive",
       "parameter_mmax": 64.0,
       "parameter_mmin": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Drive",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Drive"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-7",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      260.0,
      50.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      60.5,
      25.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Mix",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Mix",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Mix"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      430.0,
      60.0,
      100.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      55.0,
      2.5,
      55.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "fold",
        "wrap",
        "clip",
        "buchla"
       ],
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Mode",
       "parameter_mmax": 3,
       "parameter_modmode": 0,
       "parameter_shortname": "Mode",
       "parameter_type": 2
      }
     },
     "varname": "Mode"
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "newobj",
     "text": "br.shaper.multi.1.1",
     "numinlets": 4,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      15.0,
      245.0,
      470.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-10",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      125.0,
      330.0,
      47.0
     ],
     "text": "[br.shaper.multi.1.1] is the real object: the gen~ lives inside it (Drive and Mix glide 10 ms; Mode crossfades 20 ms). This file adds the dials and the State outlet.",
     "linecount": 3
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
      290.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.0,
      0.0,
      0.0,
      1.0
     ],
     "bordercolor": [
      0.0,
      0.0,
      0.0,
      1.0
     ],
     "id": "obj-panel",
     "hint": "br.shaper.multi.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
     "annotation": "br.shaper.multi.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      250.0,
      128.0,
      128.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      165.0,
      79.0
     ],
     "rounded": 7
    }
   },
   {
    "box": {
     "id": "obj-st-drive-t",
     "maxclass": "newobj",
     "text": "t f f",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      90.0,
      125.0,
      54.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-st-drive-c",
     "maxclass": "newobj",
     "text": "change 0.",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      140.0,
      160.0,
      84.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-st-drive-p",
     "maxclass": "newobj",
     "text": "prepend drive",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      140.0,
      195.0,
      95.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-st-mix-t",
     "maxclass": "newobj",
     "text": "t f f",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      260.0,
      125.0,
      54.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-st-mix-c",
     "maxclass": "newobj",
     "text": "change 0.",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      310.0,
      160.0,
      84.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-st-mix-p",
     "maxclass": "newobj",
     "text": "prepend mix",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      310.0,
      195.0,
      95.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-st-mode-t",
     "maxclass": "newobj",
     "text": "t i i",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      430.0,
      125.0,
      54.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-st-mode-c",
     "maxclass": "newobj",
     "text": "change -1",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      480.0,
      160.0,
      84.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-st-mode-p",
     "maxclass": "newobj",
     "text": "prepend mode",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      480.0,
      195.0,
      95.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-state",
     "maxclass": "outlet",
     "index": 2,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      480.0,
      290.0,
      30.0,
      30.0
     ],
     "comment": "State (Message): drive, mix and mode, sent the moment a control changes. Pick them out by name: [route drive mix mode]"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "obj-6",
      0
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
      "obj-7",
      0
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
      "obj-8",
      0
     ],
     "source": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-11",
      0
     ],
     "source": [
      "obj-9",
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
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
      0
     ],
     "destination": [
      "obj-st-drive-t",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-drive-t",
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
      "obj-st-drive-t",
      1
     ],
     "destination": [
      "obj-st-drive-c",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-drive-c",
      0
     ],
     "destination": [
      "obj-st-drive-p",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-drive-p",
      0
     ],
     "destination": [
      "obj-state",
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
      "obj-st-mix-t",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-mix-t",
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
      "obj-st-mix-t",
      1
     ],
     "destination": [
      "obj-st-mix-c",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-mix-c",
      0
     ],
     "destination": [
      "obj-st-mix-p",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-mix-p",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-st-mode-t",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-mode-t",
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
      "obj-st-mode-t",
      1
     ],
     "destination": [
      "obj-st-mode-c",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-mode-c",
      0
     ],
     "destination": [
      "obj-st-mode-p",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-st-mode-p",
      0
     ],
     "destination": [
      "obj-state",
      0
     ]
    }
   }
  ]
 }
}