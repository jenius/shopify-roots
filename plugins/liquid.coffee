jade = require 'jade' 

exports.settings =
  file_type: 'sade'
  target: 'liquid'

exports.compile = (file, callback) ->
  error = false
  compiled_contents = null

  try
    compiled_contents = jade.compile(file.contents,
      pretty: not global.options.compress
      filename: file.path
    )
  catch err
    error = err

  callback(error, compiled_contents)
