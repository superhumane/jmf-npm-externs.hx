package js.npm;

/**
	A language for description of command-line interfaces.

	The basic idea is that a good help message has all necessary information in it to make a parser.

	This implementation can be used for server-side CoffeeScript and JavaScript programs.
**/
@:jsRequire("docopt")
extern class Docopt {
	/**
		Build a CLI and read specified commands, arguments and options from `argv`.

		Parses usage patterns and option descriptions from a docstring and ensures that program invocation matches one of the usage patterns.

		This method takes 1 required argument, and 5 optional arguments. Optional arguments are passed in a struct.

		 - `doc` (required) should be a string with the help message, written according to rules of the docopt language. Here's a quick example:

		    Usage: your_program [options]

		      -h --help     Show this.
		      -v --verbose  Print more text.
		      --quiet       Print less text.
		      -o FILE       Specify output file [default: ./test.txt].

		 - `argv` is an optional argument vector. It defaults to the arguments passed to your program (`process.argv[2..]`). You can also supply it with an array of strings, as with `process.argv`. For example: `['--verbose', '-o', 'hai.txt']`.

		 - `help` (default: `true`) specifies whether the parser should automatically print the help message (supplied as doc) in case `-h` or `--help` options are encountered. After showing the usage-message, the program will terminate. If you want to handle `-h` or `--help` options manually (the same as other options), set it to `false`.

		 - `version` (default: `null`) is an optional argument that specifies the version of your program. If supplied, then, if the parser encounters `--version` option, it will print the supplied version and terminate. `version` should be a string, e.g. `"2.1.0rc1"`.

		 - `options_first`, by default `false`. If set to `true` will disallow mixing options and a positional argument. I.e. after the first positional argument, all arguments will be interpreted as positional even if they look like options. This can be used for strict compatibility with POSIX, or if you want to dispatch your arguments to other programs.

		 - `exit`, by default `true`. If set to `false` will cause docopt to throw exceptions instead of printing the error to the console and terminating the application. This flag is mainly for testing purposes.

		*Note*: Although docopt automatically handles `-h`, `--help` and `--version` options, you still need to mention them in the options description (`doc`) for your users to know about them.

		The return value is a JavaScript object with properties (giving long options precedence), like this:

		    {
		        '--timeout': '10',
		        '--baud': '4800',
		        '--version': false,
		        '--help': false,
		        '-h': false,
		        serial: true,
		        tcp: false,
		        '<host>': false,
		        '<port>': '/dev/ttyr01'
		    }
	**/
	static function docopt(doc:String, args : { ?argv:Array<String>, ?help:Bool, ?version:String, ?options_first:Bool, ?exit:Bool }):haxe.DynamicAccess<Dynamic>;
}

