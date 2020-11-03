#!/usr/bin/env node
function echo(argv, writer) {
  writer.write(`${ argv.slice(2).join(' ') }\n`);
}

module.exports = echo

if (require.main === module) {
  try {
    echo(process.argv, process.stdout);
  } catch (e) {
    process.stderr.write(e);
    process.exit(-1);
  }
  process.exit(0);
}
