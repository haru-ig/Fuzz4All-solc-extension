pragma solidity ^0.8.0;
contract C {
    uint256 value;
    constructor() public {
        value = 0xAC;
    }
    function test(uint128 x) public {
        if (x == 0xff) {
            value = 2**uint8(x << 1);
        }
    }
}


pragma solidity ^0.8.0;
contract A
{
  uint8 public value;
  constructor() public
  {
    value = 0xabce;
  }
  function test(){
    uint256 x = A.value;
    uint256 y = uint8(A.value);
    uint256 z = uint128(A.value);
    if (x == 0xabce)
    {
      A.value = 0x00;
      A.value = uint8(A.value<<1);
    }
    else if (y == 0xab)
    {
      A.value = 1;
    }
    else if (z == 0xab)
    {
      A.value = 1;
    }
    else if (x == 2)
    {
      A.value = 0x00;
      A.value = uint8(A.value);
    }
  }
}
assembly {
    contract B{
      uint value;
      constructor {
        value := 0xabce;
      }
      function test() {
        value := 0x00;
      }
    }
}


pragma solidity ^0.8.0;
contract C {
    constructor() public {
        uint256 value = 0xabce;
        value = 1;
        value = 2;
        if (value == 1) {
            uint256 x = 0xab
