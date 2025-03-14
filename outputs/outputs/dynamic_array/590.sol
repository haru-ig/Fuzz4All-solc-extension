pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract test42 {
  bytes32[2] memory a3 = new bytes32[](2);

  function test() public {
    a3 = [ bytes32( 'a' ), bytes32( 'b' ) ];
    a3[1] = bytes32( '0xdeadbeef' );
  }
}
