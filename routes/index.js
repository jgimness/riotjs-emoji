var express = require('express');
var router = express.Router();
var riot = require('riot');
var EmojiTag = require('../public/lib/emoji.tag');

/* GET home page. */
router.get('/', function(req, res, next) {
  var riotOutput = riot.render(EmojiTag);

  res.render('index', { riotOutput: riotOutput });
});

module.exports = router;
