package js.npm;

/**
	Easy use 'mkdir'.

	When either dirpath or parent dirpath doesn't exist, they will be
	created automatically.
**/
@:jsRequire("mkdir-p")
@:native("mkdir")
extern class MkdirDashP {
	/**
		Async.
	**/
	@:selfCall
	static function mkdir(dist:String, callback:js.Error->Void):Void;

	/**
		Sync.
	**/
	@:native("sync")
	static function mkdirSync(dist:String):Void;
}

