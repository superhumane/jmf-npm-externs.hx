package js.npm;

import haxe.extern.EitherType;

/**
	Options object for `remove` and `removeSync`
**/
typedef RemoveOptions = {
	// Log all errors and print each path just before it's removed [default: false]
	?verbose:Bool,
	// (async only) If true, remove the supplied paths sequentially, such that an unsuppressed error would short-circuit further deletes. [default: false]
	?sequential:Bool,
	// If false, halt as soon as possible after an error occurs and invoke the callback. When operating in sequential mode, this implies an error removing the first of several paths would halt before touching the rest. If set, `ignoreErrors` overrides `ignoreMissing`. [default: false]
	?ignoreErrors:Bool,
	// Whether to treat missing paths as errors. [default: false]
	?ignoreMissing:Bool
}

/**
	Sync and async versions of rm -r, handling both files and directories.
**/
@:jsRequire("remove")
extern class Remove {
	/**
		Asynchronously and recursively remove files and/or directories.
	**/
	@:selfCall static function remove(path:EitherType<String,Array<String>>, ?options:RemoveOptions, cb:Dynamic->Void):Void;

	/**
		Synchronously and recursively remove files and/or directories.
	**/
	static function removeSync(path:EitherType<String,Array<String>>, ?options:RemoveOptions):Void;
}

