const child_process = require('child_process')

exports.handler = function (event, context, callback) {
  process.env.PATH = process.env.PATH + ':' + process.env.LAMBDA_TASK_ROOT
  var result = child_process.spawnSync('./happy-friday')
  callback(null, result.output.join("\n"))
}
