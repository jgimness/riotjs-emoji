var gulp       = require('gulp');
var browserify = require('browserify');
var riotify    = require('riotify');
var source     = require('vinyl-source-stream');
var watchify = require('watchify');

gulp.task('browserify', function(){
    browserify({
        entries: ['./public/lib/app.js'] })
        .transform(riotify, { template: '' }) // pass options if you need
        .bundle()
        .pipe(source('app.min.js'))
        .pipe(gulp.dest('public/lib/'))
});
