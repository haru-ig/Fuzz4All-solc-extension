pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract C {
  uint public a=0x10;
  uint public b;
  uint public c=a+b;
  function M() public {
    for (uint i=0;i<100;i++) {
      c=c%3;
      c=c%2;
      c=c%a;
      a=a*2;
      a%=2;
    }
    a=a-5;
    c-=3;
    c-=1;
    a%=b-8;
    b+=c+b-a;
    c%=a-5;
    a-=3;
    b+=a;
    a%=b-8;
    a+=c;
    b+=a;
    a%=b-8;
    a+=5;
    a-=3;
    b+=c+a;
    b+=c+a;
    a%=a;
    c-=a-a;
  }
}

pragma solidity ^0.8.0;

contract C {
  event Ev ();
  event Ev2 (uint a, uint b);
  uint9  constant constant_uint9=42;
  mapping (uint256=>uint8) constants_bool;
  uint8 constant_byte;
  uint8 constant_byte2;
  uint16 constant_short;
  uint256 constant_uint256;
  uint512 constant_uint;
  bytes32 constant constant_bytes32;
  bytes4 constant constant_bytes4;
  bytes5 constant constant_bytes5;
  bytes6 constant constant_bytes6;
  bytes7 constant constant_bytes7;
  bytes8 constant constant_bytes8;
  bytes9 constant constant_bytes9;
  bytes10 constant constant_bytes10;
  bytes11 constant constant_bytes11;
  bytes12 constant constant_bytes12;
  bytes13 constant constant_bytes13;
  bytes14 constant constant_bytes14;
  bytes15 constant constant_bytes15;
  bytes16 constant constant_bytes16;
  bytes17 constant constant_bytes17;
  bytes18 constant constant_bytes18;
  bytes19 constant constant_bytes19
