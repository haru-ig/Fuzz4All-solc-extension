pragma solidity ^0.8.0;
contract Equivalent_contract {
  function function_one(uint i1, uint i2) view returns (uint) {
    return 1*2/ constant1 + (i1 + i2) * constant1;
  }



  function function_two(uint i3) view returns (uint) {
    return 3*function_one(constant1, i3);
  }
  function functionx() public view returns (uint) {
    uint p = 1*2*2 / (constant1 + constant2);
    if (p == 5) {
      return function_two(100);
    } else if (p < 5) {
      return function_one(10, 100);
    } else {
      return 0;
    }
  }
}
contract Equivalent_contract2 {
  uint p = 1*2*2 / (constant1 + constant2);
  if (p > 5)
  {
    return function_two(100);
  } else if (p!= 5)
  {
    return function_one(10, 100);
  } else
  {
    return 0;
  }
}
