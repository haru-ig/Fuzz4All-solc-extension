pragma solidity ^0.8.0;
contract Multipair {
  function multiplicationTest(address[] memory numbers, bytes32[] memory numbers32s) public pure returns (address, uint, bytes32[] memory){
    uint r1 =  Multipair.multiplication(2, 4);
    uint r2 =  Multipair.multiplication(3, 8);
    bytes32 r3 =  Multipair.multiplication("hi", "lol");
    address[] memory test = new address[](10);
    address c = address(0x0);
    for (uint i=0; i<test.length; i++) {
      test[i] = c;
    }
    bytes calldata n1 = toBytes32(1);
    require(r1 == 257 && r2 == 64 && bytes32(n1) == r3 );
  }

  function toBytes32 (uint value) private pure returns(bytes32) {
    return add(bytes32(value), bytes32(value + 1));
  }

  function toBytes(uint value) public pure returns(bytes memory) {
    return add(abi.encodePacked("hi"), abi.encodePacked(uint80(value)));
  }

  function add(bytes calldata b1, bytes memory b2, bytes memory _b3) public pure returns(bytes memory) {
    return abi.encodePacked(b1, b2, uint80(uint(abi.decode(_b3, (bytes8))))));
  }

  function multiplication(uint a, uint b) public pure returns (uint r) {
    r = a * b;
  }

}








/* 6) 0 ** 16e18 = 0: 1 = 0.000000000000000000000000000000000000000000000000000000000
