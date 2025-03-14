pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Equivalent {
enum State {
  A
}
State private s;
function _set(State x) private returns(bytes32) {
  require(s == States[x], 'wrong state');
  s = States[x];
  return X;
}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedClass {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modify() public {
    if (x == X) {
      x = '5aa3fe';
    }
}
}
contract Equivalent {
enum State {
  A
}
State[] Memory states;
State private s;
constructor() public {
  states[0] = States[0];
}
function _set(State x) private returns (bytes32) {
  states[s] = States[x];
  s = States[x];
  return X;
}
}
