pragma solidity ^0.8.0;
contract alternativeC {
  function f(uint8 a) public returns (uint256)
  {
    uint a_as_unsigned = a % 2;
    uint8 res;
    if( a_as_unsigned > 1) {
      res = uint8(2) % 2;
    } else {
      res = uint8(1);
    }
    return res;
  }
}


pragma solidity ^0.8.0;
contract alternativeC {
  function f(uint8 a) public returns (uint256)
  {

    uint a_as_unsigned = a % 2;
    uint256 res;
    uint8 res_wrapped;
    if( a_as_unsigned > 1) {
      res = unchecked(uint256(2) % 2);
    } else {
      res = unchecked(uint256(1));
    }
    return res;
  }
}

pragma solidity ^0.8.0;
contract alternativeC
{
  function f(uint8 a) public returns (uint256)
  {

    uint a_as_unsigned = a % 2;
    uint256 res;
    uint8 res_wrapped;
    if( a_as_unsigned > 1) {
      res = unchecked(uint256(2) % 2);
    } else {
      res = unchecked(uint256(1));
    }
    return res;
  }
}




pragma solidity ^0.8.0;
contract alternativeD {
  function f(uint an_uint8) public returns (uint) {
    uint two = 2 % an_uint8;
    uint f1 = address(2) % an_uint8;
    uint f2 = 1 % an_uint8;
    uint f3 = 0 % an_uint8;
    uint f0;
    f0 = 2 % an_uint8;
    uint f4;
    f4 = 1 % an_uint8;
    uint f5;
    f5 = 0 % an_uint
