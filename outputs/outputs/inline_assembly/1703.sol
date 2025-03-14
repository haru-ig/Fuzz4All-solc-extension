pragma solidity ^0.8.0;
contract MutatorS10 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 c;
  function mutate() public {
    c = ONE;
    c = ONE_PLUS;
    c = ONE / ONE;
  }
}

pragma solidity 0.8.10;
contract D10 {
uint256 constant NUMBER_OF_ARITY = 2;
function average(uint256[] memory x) public returns(uint256 sum) {
  sum = 0;
  for(uint256 i; i < NUMBER_OF_ARITY; i++) {
    sum += x[i];
  }
  return sum / NUMBER_OF_ARITY;
}
}

pragma solidity ^0.8.0;
contract D11 {
function average(uint256[] memory x) public returns(uint256) {
uint256 sum = 0;
uint256 N = x.length;
require(N!= 0);

for(uint256 i; i < N; i++) {
  sum += x[i];
}
return sum / N;
}
}
