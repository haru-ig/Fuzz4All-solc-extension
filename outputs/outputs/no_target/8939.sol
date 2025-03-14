pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v6 {
    uint160 constant public _Value22 = 203;
    uint256 constant public _Value23 = 88;
    uint256 constant public _Value20 = 89;
    function test (uint256  _value21) public {
    }
}


contract SamplingAbiMutation_v1 {
  uint256 constant public _Value22 = 203;
  function test (uint256 b1) public returns (uint256 a6) {
    uint256 constant a5 = 88;
    b1;
    uint256 constant b3 = 89;
    b3;
  }
  constructor () public {
    test(203);
  }
}
contract SamplingAbiMutation_v2 {
  uint256 constant public _Value22 = 7;
  uint256 constant public _Value23 = 88;
  function test2 (uint256 b2) public returns (uint256 b3) {
    uint256 constant b3 = 89;
    b2;
    uint256 constant a4 = 7;
  }
  constructor () public {
    test2(7);
  }
}
contract SamplingAbiMutation_v3 {
  uint256 constant public _Value22 = 7;
  uint256 constant public _Value23 = 88;
  uint256 constant public _Value24 = 89;
  function f (uint256 b5) public returns (uint256 b3, uint256 b4) {
    uint256 constant b4 = 90;
    b5;
    uint256 constant a4 = 7;
  }
  constructor () public {
    f(8);
  }
}
contract SamplingAbiMutation_v4 {
  uint256 constant public _Value22 = 7;
  uint256 constant public _Value23 = 88;
  uint256 constant public _Value24 = 89;
  uint256 constant public _Value25 = 90;
  function g (uint256 b6) public returns (uint256 b3, uint256 b4, uint256 b5) {
    uint256 constant a4 = 7;
    uint256 constant a5 = 88;
    b5;
    uint256 constant b3 = 90;
  }
  constructor () public {
    g(89);
