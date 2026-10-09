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
   640.0,
   480.0
  ],
  "bglocked": 0,
  "openinpresentation": 1,
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
  "devicewidth": 110.0,
  "description": "br.shaper.buchla.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
  "digest": "",
  "tags": "",
  "style": "",
  "subpatcher_template": "",
  "assistshowspatchername": 0,
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
     "text": "br.shaper.buchla.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
     "linecount": 5
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "id": "obj-1",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      620.0,
      15.0,
      58.0,
      20.0
     ],
     "text": "buchla",
     "fontname": "Arial",
     "fontsize": 12.0,
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      105.0,
      20.0
     ],
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
     "maxclass": "inlet",
     "id": "obj-2",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
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
      90.0,
      15.0,
      30.0,
      30.0
     ],
     "comment": "Drive (Float) 1 - 64. How hard the signal is pushed into the shaper: 1 = a full-scale input just reaches the edge; higher = more folds. Above ~10, keep Drive x pitch under ~10-15 kHz to stay clean. Default 2",
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
      260.0,
      15.0,
      30.0,
      30.0
     ],
     "comment": "Mix (Float) 0 - 1. 0 = dry input, 1 = fully shaped. Default 1",
     "index": 3
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "id": "obj-5",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      90.0,
      50.0,
      44.0,
      66.0
     ],
     "parameter_enable": 1,
     "presentation": 1,
     "presentation_rect": [
      5.0,
      25.0,
      44.0,
      48.0
     ],
     "varname": "Drive",
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
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
        2.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Drive",
       "parameter_shortname": "Drive",
       "parameter_mmin": 1.0,
       "parameter_mmax": 64.0,
       "parameter_modmode": 0,
       "parameter_type": 0,
       "parameter_unitstyle": 1,
       "parameter_exponent": 3.0
      }
     }
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "id": "obj-6",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      260.0,
      50.0,
      44.0,
      66.0
     ],
     "parameter_enable": 1,
     "presentation": 1,
     "presentation_rect": [
      55.0,
      25.0,
      44.0,
      48.0
     ],
     "varname": "Mix",
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
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
       "parameter_shortname": "Mix",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "newobj",
     "text": "br.shaper.buchla.1.1",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      15.0,
      245.0,
      300.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "id": "obj-8",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      620.0,
      125.0,
      330.0,
      47.0
     ],
     "text": "[br.shaper.buchla.1.1] is the real object: the gen~ lives inside it (Drive and Mix glide 10 ms). This file adds the dials and the State outlet.",
     "fontname": "Arial",
     "fontsize": 12.0,
     "linecount": 3
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
      290.0,
      30.0,
      30.0
     ],
     "comment": "Output (Signal) shaped signal",
     "index": 1
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "id": "obj-panel",
     "hint": "br.shaper.buchla.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
     "annotation": "br.shaper.buchla.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016); the buchla shape is in the style of the Buchla 259 timbre circuit.",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      620.0,
      250.0,
      128.0,
      128.0
     ],
     "parameter_enable": 0,
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      110.0,
      79.0
     ],
     "background": 1,
     "ignoreclick": 1,
     "border": 0,
     "rounded": 7,
     "mode": 0,
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
     ]
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
     "id": "obj-state",
     "maxclass": "outlet",
     "index": 2,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      310.0,
      290.0,
      30.0,
      30.0
     ],
     "comment": "State (Message): drive and mix, sent the moment a control changes. Pick them out by name: [route drive mix]"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-3",
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
      "obj-4",
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
      "obj-7",
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
      "obj-5",
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
      "obj-7",
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
      "obj-6",
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
      "obj-7",
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
   }
  ],
  "dependency_cache": [],
  "autosave": 0,
  "openrect": [
   85.0,
   104.0,
   110.0,
   79.0
  ]
 }
}