pragma solidity ^0.8.0;
contract Equivalent_contract_2 {
  uint constant constant1;
  uint constant constant2;
  uint constant constant3;
  uint constant constant4;

  constructor() payable {
      assembly {
          let constant1 := 10
          let constant2 := 11
          let constant3 := 12
          let constant4 := 13
      }
  }
}

contract Equivalent_contract_3 {
  uint constant constant1;
  uint constant constant2;
  uint constant constant3;
  uint constant constant4;
}


contract UseInlineAssembly {
  function test(uint b) public pure returns(uint) {
    uint result = uint(uint128(120) + b);
    return (result + b + constant1 + constant2 + constant3 + constant4);
  }
  function test2(uint a) public pure returns(uint) {
    uint result = uint(uint128(uint128(307)) + a + 10);
    return (result + a + constant1 + constant2 + constant3 + constant4);
  }

}
