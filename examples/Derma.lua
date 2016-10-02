-- Point of this module is to simplify creation of UI menus by separating
--  all element settings into DSS ( Derma Style Sheet )

-- Features:
-- 	+Separated functional code and UI code
--	+Making customization of UI much esier for end user
--   >Coder doesn't need to create separate variable for each UI element
--   >Localization is much easier and prettier. Now all texts and box sizes can be configurated in single DSS
--  +Support for themes. You can load themes from DSS string. 

-- Limitations:
--  -In current version loading interface is a bit slower with DSS.

-- DSS is only BASED on CSSv3. Most of CSSv3 features won't work in DSS.







-- All available functions
------------------------------------

local Derma = CTLib.Derma()

Derma.SetDSS( [[

/* Comment */

*{
	SetColor: Color( 255, 0, 0 );
}

.DLabel{
	SetBackgroundColor: Color( 0, 255, 0 );
	SetFont: "Custom-Nigger-Font";
}

#TextOne{
	SetText: "NotFaggot";
	SetPos: 50, 120;
}

TextNigga{
	DoClick: =function() end; /* Better not do that, unless u using global vars inside */
}

]] ) -- Thoose are all available syntax features yet.


local Element = Derma.Add( { Class = "DLabel", Id = "TextOne", Name = "TextNigga", SetText = "Faggot" } )

local SameElement = Derma.FindByID( "TextOne" )
local AlsoSameElement = Derma.FindByClass( "DLabel" )[0]
local GuessWhat = Derma.FindByName( "TextNigga" )
local AllElements = Derma.Elements or Derma.GetAllElements()




-- Example: Theme loading
------------------------------------



