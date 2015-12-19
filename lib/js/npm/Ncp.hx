package js.npm;

/**
	Think cp -r, but pure node, and asynchronous. ncp can be used both as a
	CLI tool and programmatically.
**/
@:jsRequire("ncp")
@:native("ncp")
extern class Ncp {
	/**
		Programmatic usage of ncp is just as simple. The only argument
		to the completion callback is a possible error.
	**/
	static function ncp(source:String, destination:String, cb:js.Error->Void):Void;
}

