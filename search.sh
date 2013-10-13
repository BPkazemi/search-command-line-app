#!/usr/bin/env node

var child_process = require('child_process'),
	exec = child_process.exec;

var argv = process.argv.slice(2),
	searchTerm = argv[0];

if(argv.length < 1) {
	console.log('\tWoah, forgetting the search query?');
	return;
}

console.log('\tSearching google for ' + searchTerm + '.');

exec('open http://www.google.com/search?q=' + encodeURIComponent(searchTerm), 
	function(err, stdout, stderr) {
		if(err) {
			console.log('child process exited with error code', err.code);
			return;
		}
		console.log(stdout);
});