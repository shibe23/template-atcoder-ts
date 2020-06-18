import * as fs from 'fs';

const main = (input: string) => {
  const result = input.split('\n').map(Number);
  console.log(result.join('\n'));
};

main(fs.readFileSync('/dev/stdin', 'utf8'));
