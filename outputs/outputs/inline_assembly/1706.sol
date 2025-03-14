pragma solidity ^0.8.0;
contract MutatorS1 {
uint256 const ONE = 1;
uint256 const ONE_PLUS = ONE + 1;
uint256 constant TWO = ONE + 1;
uint256 constant THREE = ONE + TWO;
uint256 constant FOUR = ONE + THREE;
uint256 constant FIVE = ONE + FOUR;


uint256 constant ZERO = 0;
uint256 a = ZERO;
uint256 const MAX_MUTATION = FIVE;
uint256 constant MUT_STEP = ONE;

uint256 constant MUT = ONE + 1;

function mutate() public {
  a += muteVal();
}

function muteVal() public pure returns (uint256) {
  if (a == MAX_MUTATION) {
    return 0;
  }
  return a + MUT_STEP;
}
}

uint256 s_c = 2;
uint256 s_a = 0;
MutatorS1 s1 = MutatorS1(0xfE59816C64c2558737632341750b11153A806b4C);
s1.mutate();
assembly {

  s_a := s_c
  s_c := mload(0x40)
}

address s1Address = uint160(address(s1));



address s1Addr = uint160(uint16080(0));
uint256 stored = uint256(s1Addr);
assert(stored==256);


address s2Addr = uint160(uint16080(uint160(s2)));
uint256 stored1 = uint256(s2Addr);
assert(stored1==512);
