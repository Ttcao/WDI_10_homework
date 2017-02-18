var gulp = require('gulp');
// browserify bundles models together
var browserify = require('browserify');
var browserSync = require('browser-sync');
var babelify = require('babelify');
var source = require('vinyl-source-stream')

var sync = browserSync.create();

var handleError = function(error) {
  console.error('\nError: ', error.message, '\n');
  // let the program keep running with the transpile error
  this.emit('end');
}

// creates a server
gulp.task('serve', ['transpile'], function() {
  sync.init({
    server: 'app'
  });
});

// transpires javascript - source-to-source compilers, reads source code written in one programming language, and produce the equivalent code in another language
gulp.task('transpile', function() {
  // browserify transform - will compile the javascript to the src location
  browserify('src/js/index.js')
    .transform(babelify, {presets: ['es2015', 'react']})
    .bundle()
    .on('error', handleError)
    .pipe(source('bundle.js'))
    // store the 'bundle.js' file in 'app/js'
    .pipe(gulp.dest('app/js'))
    .pipe(sync.reload({
      stream: true
    }));
})

// calls serve (start serve) before watch-it is performed
gulp.task('watch-it', ['serve'], function() {
  // watch all files js files in src/js because thats where changes will be made in this location
  gulp.watch('src/js/**/*.js', ['transpile']);
  gulp.watch('app/index.html', sync.reload);
})

// if you call gulp without specifying a task, gulp will perform default task 'transpile'
gulp.task('default', ['transpile']);
