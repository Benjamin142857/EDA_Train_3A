/*************************************************************************/
/*                                                                       */
/* RC values have been extracted from TSMC's worst case interconnect     */
/* tables included with spice model version 1.10.                        */
/* Document No. TA-10A5-6001 (T-018-LO-SP-001) Rev1.10 Nov 23, 2001      */
/*                                                                       */
/* Resistance and Capacitance Values                                     */
/* ---------------------------------                                     */
/* The Apollo technology files included in this directory contain        */
/* resistance and capacitance (RC) values for the purpose of timing      */
/* driven place & route.  Please note that the RC values contained in    */
/* this tech file were created using the worst case interconnect models  */
/* from the foundry and assume a full metal route at every grid location */
/* on every metal layer, so the values are intentionally very            */
/* conservative. It is assumed that this technology file will be used    */
/* only as a starting point for creating initial timing driven place &   */
/* route runs during the development of your own more accurate RC        */
/* values, tailored to your specific place & route environment. AS A     */
/* RESULT, TIMING NUMBERS DERIVED FROM THESE RC VALUES MAY BE            */
/* SIGNIFICANTLY SLOWER THAN REALITY.                                    */
/*                                                                       */
/* The RC values used in the Apollo technology file are to be used only  */
/* for timing driven place and route. Due to accuracy limitations,       */
/* please do not attempt to use this file for chip-level RC extraction   */
/* in conjunction with your sign-off timing simulations. For chip-level  */
/* extraction, please use a dedicated extraction tool such as starRC,    */
/* HyperExtract or Simplex, etc.                                         */
/*                                                                       */
/*************************************************************************/
/*
   $Id: tsmc18_6lm.tf,v 1.23 2004/04/21 23:11:14 vikas Exp $
*/

Technology	{
		name				= ""
		dielectric			= 3.714e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 1000
		gridResolution			= 5
		unitVoltageName			= "v"
		voltagePrecision		= 1000000
		unitCurrentName			= "ma"
		currentPrecision		= 1000
		unitPowerName			= "pw"
		powerPrecision			= 1000
		unitResistanceName		= "kohm"
		resistancePrecision		= 10000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 10000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 25
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 25
}

Color		14 {
		name				= "14"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 255
		blueIntensity			= 190
}

Color		19 {
		name				= "19"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 0
		blueIntensity			= 255
}

Color		21 {
		name				= "21"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 80
		blueIntensity			= 100
}

Color		22 {
		name				= "22"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 80
		blueIntensity			= 190
}

Color		27 {
		name				= "27"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		33 {
		name				= "33"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 0
		blueIntensity			= 100
}

Color		35 {
		name				= "35"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 0
		blueIntensity			= 255
}

Color		36 {
		name				= "36"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 80
		blueIntensity			= 0
}

Color		43 {
		name				= "43"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		49 {
		name				= "49"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 0
		blueIntensity			= 100
}

Tile		"unit" {
		width				= 0.66
		height				= 5.04
}

Layer		"NWELL" {
		layerNumber			= 2
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DIFF" {
		layerNumber			= 3
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "19"
		lineStyle			= "solid"
		pattern				= "enter"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"OD2" {
		layerNumber			= 4
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "22"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"PIMP" {
		layerNumber			= 7
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "14"
		lineStyle			= "dash"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"NIMP" {
		layerNumber			= 8
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "lead"
		lineStyle			= "dash"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"PDIFF" {
		layerNumber			= 11
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "19"
		lineStyle			= "solid"
		pattern				= "enter"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"NDIFF" {
		layerNumber			= 12
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "zigzag"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"POLY1" {
		layerNumber			= 13
		maskName			= "poly"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "49"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0.18
		minWidth			= 0.18
		minSpacing			= 0.16
                unitMinThickness                = 0.2
                unitNomThickness                = 0.2
                unitMaxThickness                = 0.2
                maxDeltaWidth                   = -0.01
                nomDeltaWidth                   = -0.01 
                minDeltaWidth                   = -0.01
}

Layer		"CONT" {
		layerNumber			= 15
		maskName			= "polyCont"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "27"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0.22
		minWidth			= 0.22
		minSpacing			= 0.25
}

Layer		"METAL1" {
		layerNumber			= 16
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.56
		defaultWidth			= 0.23
		minWidth			= 0.23
		minSpacing			= 0.23
		fatWireThreshold		= 10
		fatThinMinSpacing		= 0.6
		fatFatMinSpacing		= 0.6
		maxSegLenForRC			= 2000
		maxCurrDensity			= 10
		unitMinResistance		= 0.000101
		unitNomResistance		= 0.000101
		unitMaxResistance		= 0.000101
		unitMinCapacitance		= 8.17e-05
		unitNomCapacitance		= 8.17e-05
		unitMaxCapacitance		= 8.17e-05
		unitMinSideWallCap		= 2.94e-05
		unitNomSideWallCap		= 2.94e-05
		unitMaxSideWallCap		= 2.94e-05
		unitMinChannelCap		= 3.78e-05
		unitNomChannelCap		= 3.78e-05
		unitMaxChannelCap		= 3.78e-05
		unitMinChannelSideCap		= 1.73e-05
		unitNomChannelSideCap		= 1.73e-05
		unitMaxChannelSideCap		= 1.73e-05
		unitMinHeightFromSub		= 0.88
		unitNomHeightFromSub		= 0.88
		unitMaxHeightFromSub		= 0.88
		unitMinThickness		= 0.53
		unitNomThickness		= 0.53
		unitMaxThickness		= 0.53
		minArea				= 0.202
}

Layer		"VIA12" {
		layerNumber			= 17
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.26
		minWidth			= 0.26
		minSpacing			= 0.26
		maxCurrDensity			= 414200
}

Layer		"METAL2" {
		layerNumber			= 18
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0.66
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
		fatWireThreshold		= 10
		fatThinMinSpacing		= 0.6
		fatFatMinSpacing		= 0.6
		maxSegLenForRC			= 2000
		maxCurrDensity			= 10
		unitMinResistance		= 0.000101
		unitNomResistance		= 0.000101
		unitMaxResistance		= 0.000101
		unitMinCapacitance		= 2.04e-05
		unitNomCapacitance		= 2.04e-05
		unitMaxCapacitance		= 2.04e-05
		unitMinSideWallCap		= 1.29e-05
		unitNomSideWallCap		= 1.29e-05
		unitMaxSideWallCap		= 1.29e-05
		unitMinChannelCap		= 1.56e-05
		unitNomChannelCap		= 1.56e-05
		unitMaxChannelCap		= 1.56e-05
		unitMinChannelSideCap		= 1.12e-05
		unitNomChannelSideCap		= 1.12e-05
		unitMaxChannelSideCap		= 1.12e-05
		unitMinHeightFromSub		= 1.984
		unitNomHeightFromSub		= 1.984
		unitMaxHeightFromSub		= 1.984
		unitMinThickness		= 0.53
		unitNomThickness		= 0.53
		unitMaxThickness		= 0.53
		minArea				= 0.202
}

Layer		"PAD" {
		layerNumber			= 19
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "zigzag"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VIA23" {
		layerNumber			= 27
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.26
		minWidth			= 0.26
		minSpacing			= 0.26
		maxCurrDensity			= 414200
}

Layer		"METAL3" {
		layerNumber			= 28
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0.56
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
		fatWireThreshold		= 10
		fatThinMinSpacing		= 0.6
		fatFatMinSpacing		= 0.6
		maxSegLenForRC			= 2000
		maxCurrDensity			= 10
		unitMinResistance		= 0.000101
		unitNomResistance		= 0.000101
		unitMaxResistance		= 0.000101
		unitMinCapacitance		= 1.14e-05
		unitNomCapacitance		= 1.14e-05
		unitMaxCapacitance		= 1.14e-05
		unitMinSideWallCap		= 8.5e-06
		unitNomSideWallCap		= 8.5e-06
		unitMaxSideWallCap		= 8.5e-06
		unitMinChannelCap		= 9.7e-06
		unitNomChannelCap		= 9.7e-06
		unitMaxChannelCap		= 9.7e-06
		unitMinChannelSideCap		= 8e-06
		unitNomChannelSideCap		= 8e-06
		unitMaxChannelSideCap		= 8e-06
		unitMinHeightFromSub		= 3.088
		unitNomHeightFromSub		= 3.088
		unitMaxHeightFromSub		= 3.088
		unitMinThickness		= 0.53
		unitNomThickness		= 0.53
		unitMaxThickness		= 0.53
		minArea				= 0.202
}

Layer		"VIA34" {
		layerNumber			= 29
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.26
		minWidth			= 0.26
		minSpacing			= 0.26
		maxCurrDensity			= 414200
}

Layer		"METAL4" {
		layerNumber			= 31
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0.66
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
		fatWireThreshold		= 10
		fatThinMinSpacing		= 0.6
		fatFatMinSpacing		= 0.6
		maxSegLenForRC			= 2000
		maxCurrDensity			= 10
		unitMinResistance		= 0.000101
		unitNomResistance		= 0.000101
		unitMaxResistance		= 0.000101
		unitMinCapacitance		= 7.9e-06
		unitNomCapacitance		= 7.9e-06
		unitMaxCapacitance		= 7.9e-06
		unitMinSideWallCap		= 8.1e-06
		unitNomSideWallCap		= 8.1e-06
		unitMaxSideWallCap		= 8.1e-06
		unitMinChannelCap		= 7e-06
		unitNomChannelCap		= 7e-06
		unitMaxChannelCap		= 7e-06
		unitMinChannelSideCap		= 7.8e-06
		unitNomChannelSideCap		= 7.8e-06
		unitMaxChannelSideCap		= 7.8e-06
		unitMinHeightFromSub		= 4.192
		unitNomHeightFromSub		= 4.192
		unitMaxHeightFromSub		= 4.192
		unitMinThickness		= 0.53
		unitNomThickness		= 0.53
		unitMaxThickness		= 0.53
		minArea				= 0.202
}

Layer		"VIA45" {
		layerNumber			= 32
		maskName			= "via4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.26
		minWidth			= 0.26
		minSpacing			= 0.26
		maxCurrDensity			= 414200
}

Layer		"METAL5" {
		layerNumber			= 33
		maskName			= "metal5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0.61
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
		fatWireThreshold		= 10
		fatThinMinSpacing		= 0.6
		fatFatMinSpacing		= 0.6
		maxSegLenForRC			= 2000
		maxCurrDensity			= 10
		unitMinResistance		= 0.000101
		unitNomResistance		= 0.000101
		unitMaxResistance		= 0.000101
		unitMinCapacitance		= 6e-06
		unitNomCapacitance		= 6e-06
		unitMaxCapacitance		= 6e-06
		unitMinSideWallCap		= 6.5e-06
		unitNomSideWallCap		= 6.5e-06
		unitMaxSideWallCap		= 6.5e-06
		unitMinChannelCap		= 5.5e-06
		unitNomChannelCap		= 5.5e-06
		unitMaxChannelCap		= 5.5e-06
		unitMinChannelSideCap		= 6.3e-06
		unitNomChannelSideCap		= 6.3e-06
		unitMaxChannelSideCap		= 6.3e-06
		unitMinHeightFromSub		= 5.296
		unitNomHeightFromSub		= 5.296
		unitMaxHeightFromSub		= 5.296
		unitMinThickness		= 0.53
		unitNomThickness		= 0.53
		unitMaxThickness		= 0.53
		minArea				= 0.202
}

Layer		"RPO" {
		layerNumber			= 34
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "21"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT1" {
		layerNumber			= 40
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT2" {
		layerNumber			= 41
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT3" {
		layerNumber			= 42
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT4" {
		layerNumber			= 43
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT5" {
		layerNumber			= 44
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"PSUB2" {
		layerNumber			= 50
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "zigzag"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"RPDMY" {
		layerNumber			= 54
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "33"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DIODE" {
		layerNumber			= 56
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"SDI" {
		layerNumber			= 58
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "zigzag"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"artiscanTEXT" {
		layerNumber			= 63
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "35"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"ESD1DMY" {
		layerNumber			= 136
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "zigzag"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"ESD2DMY" {
		layerNumber			= 137
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "zigzag"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DMP2V" {
		layerNumber			= 149
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "35"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DMN2V" {
		layerNumber			= 150
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "36"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"ESD3DMY" {
		layerNumber			= 155
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "zigzag"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

ContactCode	"CONT1" {
		contactCodeNumber		= 1
		cutLayer			= "CONT"
		lowerLayer			= "POLY1"
		upperLayer			= "METAL1"
		isDefaultContact		= 1
		cutWidth			= 0.22
		cutHeight			= 0.22
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.1
		lowerLayerEncHeight		= 0.1
		minCutSpacing			= 0.25
}

ContactCode	"via1" {
		contactCodeNumber		= 2
		cutLayer			= "VIA12"
		lowerLayer			= "METAL1"
		upperLayer			= "METAL2"
		isDefaultContact		= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0064
		unitNomResistance		= 0.0064
		unitMaxResistance		= 0.0064
}

ContactCode	"via2" {
		contactCodeNumber		= 3
		cutLayer			= "VIA23"
		lowerLayer			= "METAL2"
		upperLayer			= "METAL3"
		isDefaultContact		= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0064
		unitNomResistance		= 0.0064
		unitMaxResistance		= 0.0064
}

ContactCode	"via3" {
		contactCodeNumber		= 4
		cutLayer			= "VIA34"
		lowerLayer			= "METAL3"
		upperLayer			= "METAL4"
		isDefaultContact		= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0064
		unitNomResistance		= 0.0064
		unitMaxResistance		= 0.0064
}

ContactCode	"via4" {
		contactCodeNumber		= 5
		cutLayer			= "VIA45"
		lowerLayer			= "METAL4"
		upperLayer			= "METAL5"
		isDefaultContact		= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0064
		unitNomResistance		= 0.0064
		unitMaxResistance		= 0.0064
}

FringeCap	6 {
		layer1				= "METAL5"
		layer2				= "METAL4"
		minFringeCap			= 0.0001089
		nomFringeCap			= 0.0001089
		maxFringeCap			= 0.0001089
}

FringeCap	7 {
		layer1				= "METAL5"
		layer2				= "METAL3"
		minFringeCap			= 5.14e-05
		nomFringeCap			= 5.14e-05
		maxFringeCap			= 5.14e-05
}

FringeCap	8 {
		layer1				= "METAL5"
		layer2				= "METAL2"
		minFringeCap			= 3.82e-05
		nomFringeCap			= 3.82e-05
		maxFringeCap			= 3.82e-05
}

FringeCap	9 {
		layer1				= "METAL5"
		layer2				= "METAL1"
		minFringeCap			= 3.2e-05
		nomFringeCap			= 3.2e-05
		maxFringeCap			= 3.2e-05
}

FringeCap	10 {
		layer1				= "METAL4"
		layer2				= "METAL3"
		minFringeCap			= 0.0001243
		nomFringeCap			= 0.0001243
		maxFringeCap			= 0.0001243
}

FringeCap	11 {
		layer1				= "METAL4"
		layer2				= "METAL2"
		minFringeCap			= 5.82e-05
		nomFringeCap			= 5.82e-05
		maxFringeCap			= 5.82e-05
}

FringeCap	12 {
		layer1				= "METAL4"
		layer2				= "METAL1"
		minFringeCap			= 4.25e-05
		nomFringeCap			= 4.25e-05
		maxFringeCap			= 4.25e-05
}

FringeCap	13 {
		layer1				= "METAL3"
		layer2				= "METAL2"
		minFringeCap			= 0.00011
		nomFringeCap			= 0.00011
		maxFringeCap			= 0.00011
}

FringeCap	14 {
		layer1				= "METAL3"
		layer2				= "METAL1"
		minFringeCap			= 5.29e-05
		nomFringeCap			= 5.29e-05
		maxFringeCap			= 5.29e-05
}

FringeCap	15 {
		layer1				= "METAL2"
		layer2				= "METAL1"
		minFringeCap			= 0.0001254
		nomFringeCap			= 0.0001254
		maxFringeCap			= 0.0001254
}

FringeCap	17 {
		layer1				= "METAL5"
		layer2				= "METAL5"
		minFringeCap			= 9.34e-05
		nomFringeCap			= 9.34e-05
		maxFringeCap			= 9.34e-05
}

FringeCap	18 {
		layer1				= "METAL4"
		layer2				= "METAL4"
		minFringeCap			= 9.33e-05
		nomFringeCap			= 9.33e-05
		maxFringeCap			= 9.33e-05
}

FringeCap	19 {
		layer1				= "METAL3"
		layer2				= "METAL3"
		minFringeCap			= 9.31e-05
		nomFringeCap			= 9.31e-05
		maxFringeCap			= 9.31e-05
}

FringeCap	20 {
		layer1				= "METAL2"
		layer2				= "METAL2"
		minFringeCap			= 9.26e-05
		nomFringeCap			= 9.26e-05
		maxFringeCap			= 9.26e-05
}

FringeCap	21 {
		layer1				= "METAL1"
		layer2				= "METAL1"
		minFringeCap			= 0.000104
		nomFringeCap			= 0.000104
		maxFringeCap			= 0.000104
}

DesignRule	{
		layer1				= "VIA23"
		layer2				= "VIA12"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "VIA34"
		layer2				= "VIA23"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "VIA45"
		layer2				= "VIA34"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "via1Blockage"
		layer2				= "VIA12"
		minSpacing			= 0.26
}

DesignRule	{
		layer1				= "via2Blockage"
		layer2				= "VIA23"
		minSpacing			= 0.26
}

DesignRule	{
		layer1				= "via3Blockage"
		layer2				= "VIA34"
		minSpacing			= 0.26
}

DesignRule	{
		layer1				= "via4Blockage"
		layer2				= "VIA45"
		minSpacing			= 0.26
}

PRRule		{
		rowSpacingTopTop		= 0
		rowSpacingTopBot		= 1.03
		rowSpacingBotBot		= 0
		abuttableTopTop			= 1
		abuttableTopBot			= 0
		abuttableBotBot			= 1
}
