pragma solidity ^0.8.0;
contract test270 {
    uint[] x;
}
contract test271 {
    uint[] x;
    function f64(uint index) public view returns (int) {
        bytes8 o = "0", b1, b2, b3, b4, b5;
        for (uint i = 0; i < x.length; i++) {
          bytes8 o = 0, b1, b2, b3, b4, b5;
        }
        return 1;
    }
}
contract test272
{
  bytes32 constant a = "0x1234567890abcdef01234567890abcdef";

  function f64(uint) public returns (int) {
    bytes32 _a;
    for (uint i = 0; i < 6; i++) {
      _a = i;
    }

    return int((uint8[](_a)[(uint8 15)])[((uint8 15) / 2)]);
  }

  function f() public returns (int) {
    bytes32[] memory o = new bytes32[](1);
    o[0] = a;


    bytes32 _a = o[0];
    return (_a[(uint35((uint8)1) / 2)] / 20) / 5;
  }
}
