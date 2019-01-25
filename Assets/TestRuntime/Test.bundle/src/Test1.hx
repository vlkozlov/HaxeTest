package ; #if !flash


import openfl._internal.formats.swf.SWFLite;
import openfl.display.MovieClip;
import openfl.Assets;


class Test1 extends MovieClip {
	
	
	
	
	public function new () {
		
		super ();
		
		/*
		if (!SWFLite.instances.exists ("s7YT1iSTH7Z6pex3nxAr")) {
			
			SWFLite.instances.set ("s7YT1iSTH7Z6pex3nxAr", SWFLite.unserialize (Assets.getText ("s7YT1iSTH7Z6pex3nxAr")));
			
		}
		*/
		
		var swfLite = SWFLite.instances.get ("s7YT1iSTH7Z6pex3nxAr");
		var symbol = swfLite.symbols.get (2);
		
		__fromSymbol (swfLite, cast symbol);
		
	}
	
	
}


#else
@:bind @:native("test1") class Test1 extends flash.display.MovieClip {
	
	
	
	
	public function new () {
		
		super ();
		
	}
	
	
}
#end