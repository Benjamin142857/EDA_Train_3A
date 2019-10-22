/*#
  #Tech file header
  #*/
Technology   {
        name                            = "umc_90nm_1p9m126_mk.tf"
#        date                            = "Tue Sep 20 20:04:40 CST 2005"
        dielectric                      = 4.1e-05
        unitTimeName                    = "ns"
        timePrecision                   = 1000
        unitLengthName                  = "micron"
        lengthPrecision                 = 1000
        gridResolution                  = 5
        unitResistanceName              = "kohm"
        resistancePrecision             = 1000000
        unitCapacitanceName             = "pf"
        capacitancePrecision            = 1000000    
        unitInductanceName              = "nh"
        inductancePrecision             = 100
        unitPowerName                   = "pw"
        powerPrecision                  = 1000000
        unitVoltageName                 = "V"
        voltagePrecision                = 1000000
        unitCurrentName                 = "mA"
        currentPrecision                = 1000000
	fatTblSpacingMode               = 1
        stubMode                        = 4
}

Stipple   "rectangleX" {
          width                           = 1
          height                          = 1
          pattern                         = (1)
}

Stipple	   "dots" {
          width                 = 4
          height                = 4
          pattern               = (0, 1, 0, 1,
                                   0, 0, 0, 0,
                                   0, 1, 0, 1,
                                   0, 0, 0, 0)
}

/*#
  #Layer definition
  #*/
Layer   "active" {
        layerNumber		       = 1
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "brown"
        lineStyle                    = "solid"
        pattern                      = "slash"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "nwell" {
        layerNumber		       = 3
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "yellow"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "pplus" {
        layerNumber		       = 11
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "brown"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "nplus" {
        layerNumber		       = 12
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "orange"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "lvt" {
        layerNumber		       = 19
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "sp" {
        layerNumber		       = 30
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "nesd" {
        layerNumber		       = 31
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

LayerDataType  "lllvt" {
        layerNumber		       = 31
        dataTypeNumber               = 71
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
}

Layer   "pesd" {
        layerNumber		       = 32
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "mg" {
        layerNumber		       = 35
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "sab" {
        layerNumber		       = 36
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "tg" {
        layerNumber		       = 37
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "hr" {
        layerNumber		       = 38
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "contact" {
        layerNumber		       = 39
        maskName                     = "contact"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "green"
        lineStyle                    = "solid"
        pattern                      = "solid"
        pitch                        = 0
        defaultWidth                 = 0.12
        minWidth                     = 0.12
        minSpacing                   = 0.16
}

Layer   "nwres" {
        layerNumber		       = 40
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "poly" {
        layerNumber		       = 41
        maskName                     = "poly"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "green"
        lineStyle                    = "solid"
        pattern                      = "slash"
        pitch                        = 0
        defaultWidth                 = 0.08
        minWidth                     = 0.08
        minSpacing                   = 0.16
}

Layer   "metal1" {
        layerNumber		     = 46
        maskName                     = "metal1"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "cyan"
        lineStyle                    = "solid"
        pattern                      = "backSlash"
        pitch                        = 0.280
        defaultWidth                 = 0.120
        maxWidth                     = 25
        minWidth                     = 0.120
        minSpacing                   = 0.120
        minArea                      = 0.07
        minEnclosedArea              = 0.23 
	fatTblDimension              = 3
	fatTblThreshold              = (0,0.7,2.8)
	fatTblSpacing                = (0.12,0.18,0.34,
	                                0.18,0.18,0.34,
					0.34,0.34,0.34)
	unitMinResistance	     = 8.3e-05
	unitNomResistance	     = 1.15e-04
	unitMaxResistance	     = 1.47e-04
        unitMinThickness             = 0.198
        unitNomThickness             = 0.22
        unitMaxThickness             = 0.242
        stubSpacing                  = 0.14
        stubThreshold                = 0.14
        endOfLineCornerKeepoutWidth  = 0.08
}

Layer   "via" {
        layerNumber		       = 47
        maskName                     = "via1"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "magenta"
        lineStyle                    = "solid"
        pattern                      = "rectangleX"
        pitch                        = 0
        defaultWidth                 = 0.14
        minWidth                     = 0.14
        minSpacing                   = 0.18
        cornerMinSpacing	     = 0.16
	fatTblDimension		     = 5
	fatTblThreshold		     = (0,0.7,1,2.1,5)
	fatTblThreshold2             = (0,0.7,1,2.1,5)
	fat2DTblFatContactNumber     = (1,3,3,3,3,
	                                3,3,3,3,3,
					3,3,3,3,3,
					3,3,3,3,3,
					3,3,3,3,4)
	fat2DTblFatContactMinCuts    = (1,2,3,4,4,
					2,2,3,4,4,
					3,3,3,4,4,
					4,4,4,4,4,
					4,4,4,4,1)
}

Layer   "metal2" {
        layerNumber		       = 48
        maskName                     = "metal2"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "yellow"
        lineStyle                    = "solid"
        pattern                      = "slash"
        pitch                        = 0.280
        defaultWidth                 = 0.140
        maxWidth                     = 25
        minWidth                     = 0.140
        minSpacing                   = 0.140
        minArea                      = 0.07
        minEnclosedArea              = 0.23
	fatTblDimension              = 3
	fatTblThreshold              = (0,0.7,2.8)
	fatTblSpacing                = (0.14,0.20,0.34,
	                                0.20,0.20,0.34,
					0.34,0.34,0.34)
	unitMinResistance	     = 7.6e-05
	unitNomResistance	     = 1.05e-04
	unitMaxResistance	     = 1.34e-04
        unitMinThickness             = 0.225
        unitNomThickness             = 0.250
        unitMaxThickness             = 0.275
        stubSpacing                  = 0.16
        stubThreshold                = 0.16
        endOfLineCornerKeepoutWidth  = 0.06
}

Layer   "via2" {
        layerNumber		       = 49
        maskName                     = "via2"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "pink"
        lineStyle                    = "solid"
        pattern                      = "rectangleX"
        pitch                        = 0
        defaultWidth                 = 0.14
        minWidth                     = 0.14
        minSpacing                   = 0.18
        cornerMinSpacing	     = 0.16
	fatTblDimension		     = 5
	fatTblThreshold		     = (0,0.7,1,2.1,5)
	fatTblThreshold2             = (0,0.7,1,2.1,5)
	fat2DTblFatContactNumber     = (5,5,5,5,5,
	                                5,5,5,5,5,
					5,5,5,5,5,
					5,5,5,5,5,
					5,5,5,5,6)
	fat2DTblFatContactMinCuts    = (1,2,3,4,4,
					2,2,3,4,4,
					3,3,3,4,4,
					4,4,4,4,4,
					4,4,4,4,1)
}

Layer   "metal3" {
        layerNumber		       = 50
        maskName                     = "metal3"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "red"
        lineStyle                    = "solid"
        pattern                      = "backSlash"
        pitch                        = 0.280
        defaultWidth                 = 0.140
        minWidth                     = 0.140
        minSpacing                   = 0.140
        maxWidth                     = 25
        minArea                      = 0.07
        minEnclosedArea              = 0.23
	fatTblDimension              = 3
	fatTblThreshold              = (0,0.7,2.8)
	fatTblSpacing                = (0.14,0.20,0.34,
	                                0.20,0.20,0.34,
					0.34,0.34,0.34)
	unitMinResistance	     = 7.6e-05
	unitNomResistance	     = 1.05e-04
	unitMaxResistance	     = 1.34e-04
        unitMinThickness             = 0.225
        unitNomThickness             = 0.250
        unitMaxThickness             = 0.275
        stubSpacing                  = 0.16
        stubThreshold                = 0.16
        endOfLineCornerKeepoutWidth  = 0.06
}

Layer   "via3" {
        layerNumber		       = 51
        maskName                     = "via3"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "yellow"
        lineStyle                    = "solid"
        pattern                      = "rectangleX"
        pitch                        = 0
        defaultWidth                 = 0.14
        minWidth                     = 0.14
        minSpacing                   = 0.18
        cornerMinSpacing	     = 0.16
	fatTblDimension		     = 5
	fatTblThreshold		     = (0,0.7,1,2.1,5)
	fatTblThreshold2             = (0,0.7,1,2.1,5)
	fat2DTblFatContactNumber     = (7,7,7,7,7,
	                                7,7,7,7,7,
					7,7,7,7,7,
					7,7,7,7,7,
					7,7,7,7,8)
	fat2DTblFatContactMinCuts    = (1,2,3,4,4,
					2,2,3,4,4,
					3,3,3,4,4,
					4,4,4,4,4,
					4,4,4,4,1)
}

Layer   "metal4" {
        layerNumber		       = 52
        maskName                     = "metal4"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "green"
        lineStyle                    = "solid"
        pattern                      = "slash"
        pitch                        = 0.280
        defaultWidth                 = 0.140
        minWidth                     = 0.140
        minSpacing                   = 0.140
        maxWidth                     = 25
        minArea                      = 0.07
        minEnclosedArea              = 0.23
	fatTblDimension              = 3
	fatTblThreshold              = (0,0.7,2.8)
	fatTblSpacing                = (0.14,0.20,0.34,
	                                0.20,0.20,0.34,
					0.34,0.34,0.34)
	unitMinResistance	     = 7.6e-05
	unitNomResistance	     = 1.05e-04
	unitMaxResistance	     = 1.34e-04
        unitMinThickness             = 0.225
        unitNomThickness             = 0.250
        unitMaxThickness             = 0.275
        stubSpacing                  = 0.16
        stubThreshold                = 0.16
        endOfLineCornerKeepoutWidth  = 0.06
}

Layer   "via4" {
        layerNumber		       = 53
        maskName                     = "via4"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "rectangleX"
        pitch                        = 0
        defaultWidth                 = 0.14
        minWidth                     = 0.14
        minSpacing                   = 0.18
        cornerMinSpacing	     = 0.16
	fatTblDimension		     = 5
	fatTblThreshold		     = (0,0.7,1,2.1,5)
	fatTblThreshold2             = (0,0.7,1,2.1,5)
	fat2DTblFatContactNumber     = (9,9,9,9,9,
	                                9,9,9,9,9,
					9,9,9,9,9,
					9,9,9,9,9,
					9,9,9,9,10)
	fat2DTblFatContactMinCuts    = (1,2,3,4,4,
					2,2,3,4,4,
					3,3,3,4,4,
					4,4,4,4,4,
					4,4,4,4,1)
}

Layer   "metal5" {
        layerNumber		       = 54
        maskName                     = "metal5"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "pink"
        lineStyle                    = "solid"
        pattern                      = "backSlash"
        pitch                        = 0.280
        defaultWidth                 = 0.140
        minWidth                     = 0.140
        minSpacing                   = 0.140
        maxWidth                     = 25
        minArea                      = 0.07
        minEnclosedArea              = 0.23
	fatTblDimension              = 3
	fatTblThreshold              = (0,0.7,2.8)
	fatTblSpacing                = (0.14,0.20,0.34,
	                                0.20,0.20,0.34,
					0.34,0.34,0.34)
	unitMinResistance	     = 7.6e-05
	unitNomResistance	     = 1.05e-04
	unitMaxResistance	     = 1.34e-04
        unitMinThickness             = 0.225
        unitNomThickness             = 0.250
        unitMaxThickness             = 0.275
        stubSpacing                  = 0.16
        stubThreshold                = 0.16
        endOfLineCornerKeepoutWidth  = 0.06
}

Layer   "via5" {
        layerNumber		       = 55
        maskName                     = "via5"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "green"
        lineStyle                    = "solid"
        pattern                      = "rectangleX"
        pitch                        = 0
        defaultWidth                 = 0.14
        minWidth                     = 0.14
        minSpacing                   = 0.18
        cornerMinSpacing	     = 0.16
	fatTblDimension		     = 5
	fatTblThreshold		     = (0,0.7,1,2.1,5)
	fatTblThreshold2             = (0,0.7,1,2.1,5)
	fat2DTblFatContactNumber     = (11,11,11,11,11,
	                                11,11,11,11,11,
				        11,11,11,11,11,
					11,11,11,11,11,
					11,11,11,11,12)
	fat2DTblFatContactMinCuts    = (1,2,3,4,4,
					2,2,3,4,4,
					3,3,3,4,4,
					4,4,4,4,4,
					4,4,4,4,1)
}

Layer   "metal6" {
        layerNumber		       = 56
        maskName                     = "metal6"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "blue"
        lineStyle                    = "solid"
        pattern                      = "slash"
        pitch                        = 0.280
        defaultWidth                 = 0.140
        minWidth                     = 0.140
        minSpacing                   = 0.140
        maxWidth                     = 25
        minArea                      = 0.07
        minEnclosedArea              = 0.23
	fatTblDimension              = 3
	fatTblThreshold              = (0,0.7,2.8)
	fatTblSpacing                = (0.14,0.20,0.34,
	                                0.20,0.20,0.34,
					0.34,0.34,0.34)
	unitMinResistance	     = 7.6e-05
	unitNomResistance	     = 1.05e-04
	unitMaxResistance	     = 1.34e-04
        unitMinThickness             = 0.225
        unitNomThickness             = 0.250
        unitMaxThickness             = 0.275
        stubSpacing                  = 0.16
        stubThreshold                = 0.16
        endOfLineCornerKeepoutWidth  = 0.06
}

Layer   "via6" {
        layerNumber		       = 57
        maskName                     = "via6"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "red"
        lineStyle                    = "solid"
        pattern                      = "rectangleX"
        pitch                        = 0
        defaultWidth                 = 0.28
        minWidth                     = 0.28
        minSpacing                   = 0.28
	fatTblDimension		     = 5
	fatTblThreshold		     = (0,1.4,2.0,4.2,5)
	fatTblThreshold2	     = (0,1.4,2.0,4.2,5)
	fat2DTblFatContactNumber     = (13,13,13,13,13,
	                                13,13,13,13,13,
				        13,13,13,13,13,
					13,13,13,13,13,
					13,13,13,13,14)
	fat2DTblFatContactMinCuts    = (1,2,3,4,4,
					2,2,3,4,4,
					3,3,3,4,4,
					4,4,4,4,4,
					4,4,4,4,1)
}

Layer   "metal7" {
        layerNumber		       = 58
        maskName                     = "metal7"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "magenta"
        lineStyle                    = "solid"
        pattern                      = "backSlash"
        pitch                        = 0.560
        defaultWidth                 = 0.280
        minWidth                     = 0.280
        minSpacing                   = 0.280
        maxWidth                     = 25
        minArea                      = 0.235
        minEnclosedArea              = 0.64
	fatTblDimension              = 3
	fatTblThreshold              = (0,2,8)
	fatTblSpacing                = (0.28,0.35,0.84,
	                                0.35,0.35,0.84,
					0.84,0.84,0.84)
	unitMinResistance	     = 3.1e-05
	unitNomResistance	     = 4.2e-05
	unitMaxResistance	     = 5.4e-05
        unitMinThickness             = 0.45
        unitNomThickness             = 0.50
        unitMaxThickness             = 0.55
}

Layer   "via7" {
        layerNumber		       = 59
        maskName                     = "via7"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "cyan"
        lineStyle                    = "solid"
        pattern                      = "rectangleX"
        pitch                        = 0
        defaultWidth                 = 0.28
        minWidth                     = 0.28
        minSpacing                   = 0.28
	fatTblDimension		     = 5
	fatTblThreshold		     = (0,1.4,2.0,4.2,5)
	fatTblThreshold2	     = (0,1.4,2.0,4.2,5)
	fat2DTblFatContactNumber     = (15,15,15,15,15,
	                                15,15,15,15,15,
				        15,15,15,15,15,
					15,15,15,15,15,
					15,15,15,15,16)
	fat2DTblFatContactMinCuts    = (1,2,3,4,4,
					2,2,3,4,4,
					3,3,3,4,4,
					4,4,4,4,4,
					4,4,4,4,1)
}

Layer   "metal8" {
        layerNumber		       = 60
        maskName                     = "metal8"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "orange"
        lineStyle                    = "solid"
        pattern                      = "slash"
        pitch                        = 0.560
        defaultWidth                 = 0.280
        minWidth                     = 0.280
        minSpacing                   = 0.280
        maxWidth                     = 25
        minArea                      = 0.235
        minEnclosedArea              = 0.64
	fatTblDimension              = 3
	fatTblThreshold              = (0,2,8)
	fatTblSpacing                = (0.28,0.35,0.84,
	                                0.35,0.35,0.84,
					0.84,0.84,0.84)
	unitMinResistance	     = 3.1e-05
	unitNomResistance	     = 4.2e-05
	unitMaxResistance	     = 5.4e-05
        unitMinThickness             = 0.45
        unitNomThickness             = 0.50
        unitMaxThickness             = 0.55
}

Layer   "via8" {
        layerNumber		       = 61
        maskName                     = "via8"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "magenta"
        lineStyle                    = "solid"
        pattern                      = "dots"
        pitch                        = 0
        defaultWidth                 = 0.56
        minWidth                     = 0.56
        minSpacing                   = 0.56
	fatTblDimension		     = 2
	fatTblThreshold		     = (0,5)
	fatTblThreshold2             = (0,5)
	fat2DTblFatContactNumber     = (17,17,
	                                17,18)
	fat2DTblFatContactMinCuts    = (1,1,
	                                1,1)
}

Layer   "metal9" {
        layerNumber		       = 62
        maskName                     = "metal9"
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "purple"
        lineStyle                    = "solid"
        pattern                      = "backSlash"
        pitch                        = 1.12
        defaultWidth                 = 0.560
        minWidth                     = 0.560
        minSpacing                   = 0.560
        maxWidth                     = 25
        minArea                      = 0.94
        minEnclosedArea              = 1.68
	fatTblDimension              = 3
	fatTblThreshold              = (0,4.6,16)
	fatTblSpacing                = (0.56,0.92,1.68,
	                                0.92,0.92,1.68,
					1.68,1.68,1.68)
	unitMinResistance	     = 2.0e-05
	unitNomResistance	     = 2.7e-05
	unitMaxResistance	     = 3.3e-05
        unitMinThickness             = 0.73
        unitNomThickness             = 0.81
        unitMaxThickness             = 0.89
}

Layer   "mmcbp" {
        layerNumber		       = 64
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "mmctp" {
        layerNumber		       = 65
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "tmv" {
        layerNumber		       = 66
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "alpad" {
        layerNumber		       = 67
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "pass" {
        layerNumber		       = 68
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "diffblk" {
        layerNumber		       = 70
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "polyblk" {
        layerNumber		       = 71
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m1blk" {
        layerNumber		       = 72
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m2blk" {
        layerNumber		       = 73
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m3blk" {
        layerNumber		       = 74
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m4blk" {
        layerNumber		       = 75
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m5blk" {
        layerNumber		       = 76
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m6blk" {
        layerNumber		       = 77
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m7blk" {
        layerNumber		       = 78
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m8blk" {
        layerNumber		       = 79
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "dpdrcmk" {
        layerNumber		       = 94
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

#Layer   "sub" {
#        layerNumber		       = 0
#        isDefaultLayer               = 1
#        visible                      = 1
#        selectable                   = 1
#        blink                        = 0
#        color                        = "white"
#        lineStyle                    = "solid"
#        pattern                      = "blank"
#        pitch                        = 0
#        defaultWidth                 = 0
#        minWidth                     = 0
#        minSpacing                   = 0
#}

Layer   "twel" {
        layerNumber		       = 6
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "drcflag" {
        layerNumber		       = 45
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "fusepad" {
        layerNumber		       = 69
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "contblk" {
        layerNumber		       = 80
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "diffsym" {
        layerNumber		       = 81
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "polysym" {
        layerNumber		       = 82
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "wellsym" {
        layerNumber		       = 83
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "chiptxt" {
        layerNumber		       = 85
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "sealsym" {
        layerNumber		       = 86
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "fusemak" {
        layerNumber		       = 88
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "padexcl" {
        layerNumber		       = 90
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "ioid" {
        layerNumber		       = 91
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "blspid" {
        layerNumber		       = 95
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "sepgnd" {
        layerNumber		       = 99
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "potext" {
        layerNumber		       = 100
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m1text" {
        layerNumber		       = 101
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m2text" {
        layerNumber		       = 102
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m3text" {
        layerNumber		       = 103
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m4text" {
        layerNumber		       = 104
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m5text" {
        layerNumber		       = 105
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m6text" {
        layerNumber		       = 106
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m7text" {
        layerNumber		       = 107
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m8text" {
        layerNumber		       = 108
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "m9text" {
        layerNumber		       = 109
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "metsym" {
        layerNumber		       = 111
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "dmetal" {
        layerNumber		       = 115
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "mfuse" {
        layerNumber		       = 117
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "special" {
        layerNumber		       = 144
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "phyname" {
        layerNumber		       = 145
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

Layer   "outline" {
        layerNumber		       = 149
        isDefaultLayer               = 1
        visible                      = 1
        selectable                   = 1
        blink                        = 0
        color                        = "white"
        lineStyle                    = "solid"
        pattern                      = "blank"
        pitch                        = 0
        defaultWidth                 = 0
        minWidth                     = 0
        minSpacing                   = 0
}

/*#
  #Contact code definition
  #*/
ContactCode   "VIA12_VV" {
		   contactCodeNumber	      = 1
		   cutLayer		      = "via"
		   lowerLayer		      = "metal1"
		   upperLayer		      = "metal2"
		   isDefaultContact	      = 1
		   cutWidth		      = 0.14
		   cutHeight		      = 0.14
		   upperLayerEncWidth	      = 0
		   upperLayerEncHeight        = 0.06
		   lowerLayerEncWidth	      = 0
		   lowerLayerEncHeight        = 0.08
		   minCutSpacing	      = 0.18
		   unitMinResistance	      = 0.0005
		   unitNomResistance	      = 0.00185
		   unitMaxResistance	      = 0.009
}

ContactCode   "VIA12_HV" {
		   contactCodeNumber	      = 3
		   cutLayer		      = "via"
		   lowerLayer		      = "metal1"
		   upperLayer		      = "metal2"
		   isDefaultContact	      = 0
		   cutWidth		      = 0.14
		   cutHeight		      = 0.14
		   upperLayerEncWidth	      = 0
		   upperLayerEncHeight        = 0.06
		   lowerLayerEncWidth	      = 0.08
		   lowerLayerEncHeight        = 0
		   minCutSpacing	      = 0.18
		   unitMinResistance	      = 0.0005
		   unitNomResistance	      = 0.00185
		   unitMaxResistance	      = 0.009
}

ContactCode	"VIA12FARM" {
		contactCodeNumber		= 4
		cutLayer			= "via"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.04
		upperLayerEncHeight		= 0.04
		lowerLayerEncWidth		= 0.04
		lowerLayerEncHeight		= 0.04
		minCutSpacing			= 0.18
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.00185
		unitMaxResistance		= 0.009
		maxNumRows			= 4
		viaFarmSpacing			= 1.2
}

ContactCode   "VIA23_VH" {
		   contactCodeNumber	      = 5
		   cutLayer		      = "via2"
		   lowerLayer		      = "metal2"
		   upperLayer		      = "metal3"
		   isDefaultContact	      = 1
		   cutWidth		      = 0.14
		   cutHeight		      = 0.14
		   upperLayerEncWidth	      = 0.06
		   upperLayerEncHeight        = 0
		   lowerLayerEncWidth	      = 0
		   lowerLayerEncHeight        = 0.06
		   minCutSpacing	      = 0.18
		   unitMinResistance	      = 0.0005
		   unitNomResistance	      = 0.00185
		   unitMaxResistance	      = 0.009
}

ContactCode	"VIA23FARM" {
		contactCodeNumber		= 6
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.04
		upperLayerEncHeight		= 0.04
		lowerLayerEncWidth		= 0.04
		lowerLayerEncHeight		= 0.04
		minCutSpacing			= 0.18
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.00185
		unitMaxResistance		= 0.009
		maxNumRows			= 4
		viaFarmSpacing			= 1.2
}

ContactCode   "VIA34_HV" {
		   contactCodeNumber	      = 7
		   cutLayer		      = "via3"
		   lowerLayer		      = "metal3"
		   upperLayer		      = "metal4"
		   isDefaultContact	      = 1
		   cutWidth		      = 0.14
		   cutHeight		      = 0.14
		   upperLayerEncWidth	      = 0
		   upperLayerEncHeight        = 0.06
		   lowerLayerEncWidth	      = 0.06
		   lowerLayerEncHeight        = 0
		   minCutSpacing	      = 0.18
		   unitMinResistance	      = 0.0005
		   unitNomResistance	      = 0.00185
		   unitMaxResistance	      = 0.009
}

ContactCode	"VIA34FARM" {
		contactCodeNumber		= 8
		cutLayer			= "via3"
		lowerLayer			= "metal3"
		upperLayer			= "metal4"
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.04
		upperLayerEncHeight		= 0.04
		lowerLayerEncWidth		= 0.04
		lowerLayerEncHeight		= 0.04
		minCutSpacing			= 0.18
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.00185
		unitMaxResistance		= 0.009
		maxNumRows			= 4
		viaFarmSpacing			= 1.2
}

ContactCode   "VIA45_VH" {
		   contactCodeNumber	      = 9
		   cutLayer		      = "via4"
		   lowerLayer		      = "metal4"
		   upperLayer		      = "metal5"
		   isDefaultContact	      = 1
		   cutWidth		      = 0.14
		   cutHeight		      = 0.14
		   upperLayerEncWidth	      = 0.06
		   upperLayerEncHeight        = 0
		   lowerLayerEncWidth	      = 0
		   lowerLayerEncHeight        = 0.06
		   minCutSpacing	      = 0.18
		   unitMinResistance	      = 0.0005
		   unitNomResistance	      = 0.00185
		   unitMaxResistance	      = 0.009
}

ContactCode	"VIA45FARM" {
		contactCodeNumber		= 10
		cutLayer			= "via4"
		lowerLayer			= "metal4"
		upperLayer			= "metal5"
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.04
		upperLayerEncHeight		= 0.04
		lowerLayerEncWidth		= 0.04
		lowerLayerEncHeight		= 0.04
		minCutSpacing			= 0.18
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.00185
		unitMaxResistance		= 0.009
		maxNumRows			= 4
		viaFarmSpacing			= 1.2
}

ContactCode   "VIA56_HV" {
		   contactCodeNumber	      = 11
		   cutLayer		      = "via5"
		   lowerLayer		      = "metal5"
		   upperLayer		      = "metal6"
		   isDefaultContact	      = 1
		   cutWidth		      = 0.14
		   cutHeight		      = 0.14
		   upperLayerEncWidth	      = 0
		   upperLayerEncHeight        = 0.06
		   lowerLayerEncWidth	      = 0.06
		   lowerLayerEncHeight        = 0
		   minCutSpacing	      = 0.18
		   unitMinResistance	      = 0.0005
		   unitNomResistance	      = 0.00185
		   unitMaxResistance	      = 0.009
}

ContactCode	"VIA56FARM" {
		contactCodeNumber		= 12
		cutLayer			= "via5"
		lowerLayer			= "metal5"
		upperLayer			= "metal6"
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.04
		upperLayerEncHeight		= 0.04
		lowerLayerEncWidth		= 0.04
		lowerLayerEncHeight		= 0.04
		minCutSpacing			= 0.18
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.00185
		unitMaxResistance		= 0.009
		maxNumRows			= 4
		viaFarmSpacing			= 1.2
}

ContactCode   "VIA67_Def" {
		   contactCodeNumber	      = 13
		   cutLayer		      = "via6"
		   lowerLayer		      = "metal6"
		   upperLayer		      = "metal7"
		   isDefaultContact	      = 1
		   cutWidth		      = 0.28
		   cutHeight		      = 0.28
		   upperLayerEncWidth	      = 0
		   upperLayerEncHeight        = 0
		   lowerLayerEncWidth	      = 0
		   lowerLayerEncHeight        = 0
		   minCutSpacing	      = 0.28
		   unitMinResistance	      = 0.0002
		   unitNomResistance	      = 0.0006
		   unitMaxResistance	      = 0.005
}

ContactCode	"VIA67FARM" {
		contactCodeNumber		= 14
		cutLayer			= "via6"
		lowerLayer			= "metal6"
		upperLayer			= "metal7"
		isFatContact			= 1
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.36
		unitMinResistance		= 0.0002
		unitNomResistance		= 0.0006
		unitMaxResistance		= 0.005
		maxNumRows			= 4
		viaFarmSpacing			= 2.4
}

ContactCode   "VIA78_Def" {
		   contactCodeNumber	      = 15
		   cutLayer		      = "via7"
		   lowerLayer		      = "metal7"
		   upperLayer		      = "metal8"
		   isDefaultContact	      = 1
		   cutWidth		      = 0.28
		   cutHeight		      = 0.28
		   upperLayerEncWidth	      = 0
		   upperLayerEncHeight        = 0
		   lowerLayerEncWidth	      = 0
		   lowerLayerEncHeight        = 0
		   minCutSpacing	      = 0.28
		   unitMinResistance	      = 0.0002
		   unitNomResistance	      = 0.0006
		   unitMaxResistance	      = 0.005
}

ContactCode	"VIA78FARM" {
		contactCodeNumber		= 16
		cutLayer			= "via7"
		lowerLayer			= "metal7"
		upperLayer			= "metal8"
		isFatContact			= 1
		cutWidth			= 0.28
		cutHeight			= 0.28
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.36
		unitMinResistance		= 0.0002
		unitNomResistance		= 0.0006
		unitMaxResistance		= 0.005
		maxNumRows			= 4
		viaFarmSpacing			= 2.4
}

ContactCode   "VIA89_Def" {
		   contactCodeNumber	      = 17
		   cutLayer		      = "via8"
		   lowerLayer		      = "metal8"
		   upperLayer		      = "metal9"
		   isDefaultContact	      = 1
		   cutWidth		      = 0.56
		   cutHeight		      = 0.56
		   upperLayerEncWidth	      = 0
		   upperLayerEncHeight        = 0
		   lowerLayerEncWidth	      = 0
		   lowerLayerEncHeight        = 0
		   minCutSpacing	      = 0.56
		   unitMinResistance	      = 0.0001
		   unitNomResistance	      = 0.0002
		   unitMaxResistance	      = 0.003
}

ContactCode	"VIA89FARM" {
		contactCodeNumber		= 18
		cutLayer			= "via8"
		lowerLayer			= "metal8"
		upperLayer			= "metal9"
		isFatContact			= 1
		cutWidth			= 0.56
		cutHeight			= 0.56
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.72
		unitMinResistance		= 0.0001
		unitNomResistance		= 0.0002
		unitMaxResistance		= 0.003
		maxNumRows			= 4
		viaFarmSpacing			= 4.8
}

/*#
  #Design rule definition
  #*/
DesignRule      {
                layer1                          = "contact"
                layer2                          = "via"
                minSpacing                      = 0
                stackable                       = 1
}
DesignRule      {
 	       layer1			       = "via"
 	       layer2			       = "via2"
 	       minSpacing		       = 0
 	       stackable		       = 1
}
DesignRule      {
                layer1                          = "via1Blockage"
                layer2                          = "via"
                minSpacing                      = 0.18
                stackable                       = 0
}

DesignRule      {
 	       layer1			       = "via2"
 	       layer2			       = "via3"
 	       minSpacing		       = 0
 	       stackable		       = 1
}
DesignRule      {
                layer1                          = "via2Blockage"
                layer2                          = "via2"
                minSpacing                      = 0.18
                stackable                       = 0
}

DesignRule      {
 	       layer1			       = "via3"
 	       layer2			       = "via4"
 	       minSpacing		       = 0
 	       stackable		       = 1
}
DesignRule      {
                layer1                          = "via3Blockage"
                layer2                          = "via3"
                minSpacing                      = 0.18
                stackable                       = 0
}

DesignRule      {
 	       layer1			       = "via4"
 	       layer2			       = "via5"
 	       minSpacing		       = 0
 	       stackable		       = 1
}
DesignRule      {
                layer1                          = "via4Blockage"
                layer2                          = "via4"
                minSpacing                      = 0.18
                stackable                       = 0
}

DesignRule      {
 	       layer1			       = "via5"
 	       layer2			       = "via6"
 	       minSpacing		       = 0
 	       stackable		       = 1
}
DesignRule      {
                layer1                          = "via5Blockage"
                layer2                          = "via5"
                minSpacing                      = 0.18
                stackable                       = 0
}

DesignRule      {
 	       layer1			       = "via6"
 	       layer2			       = "via7"
 	       minSpacing		       = 0
 	       stackable		       = 1
}
DesignRule      {
                layer1                          = "via6Blockage"
                layer2                          = "via6"
                minSpacing                      = 0.28
                stackable                       = 0
}

DesignRule      {
 	       layer1			       = "via7"
 	       layer2			       = "via8"
 	       minSpacing		       = 0
 	       stackable		       = 1
}
DesignRule      {
                layer1                          = "via7Blockage"
                layer2                          = "via7"
                minSpacing                      = 0.28
                stackable                       = 0
}

DesignRule      {
                layer1                          = "via8Blockage"
                layer2                          = "via8"
                minSpacing                      = 0.56
                stackable                       = 0
}

DensityRule { 
                layer = "metal1" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

DensityRule { 
                layer = "metal2" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

DensityRule { 
                layer = "metal3" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

DensityRule { 
                layer = "metal4" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

DensityRule { 
                layer = "metal5" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

DensityRule { 
                layer = "metal6" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

DensityRule { 
                layer = "metal7" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

DensityRule { 
                layer = "metal8" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

DensityRule { 
                layer = "metal9" 
                windowSize = 200 
                minDensity = 20 
                maxDensity = 80 
}

PRRule	   {
                rowSpacingTopTop                = 0
                rowSpacingTopBot                = 0.84
                rowSpacingBotBot                = 0
                abuttableTopTop                 = 1
                abuttableTopBot                 = 0
                abuttableBotBot                 = 1
}

Tile     "unit" {
                width                     = 1.680 
                height                    = 2.52
}
