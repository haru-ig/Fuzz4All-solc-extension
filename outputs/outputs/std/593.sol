pragma solidity ^0.8.0;
contract HelloWorld {
  uint256 constant X = 16;
  function mod(uint256 y) private pure returns(uint256) {
    return X + y;
  }

}
contract Array {

}
contract Convert {

}
contract Multiprecision {

}
contract Math {

}
contract Memory {

}
contract Random {

}
contract HelloWorld {
  address admin;
  uint constant A = 0xFFFFFBD6;
  uint constant B = 5;
  uint[5] storage a;
  uint[5] storage b;
  function get() private view returns(uint) {
    return uint8(a[0]);
  }
  function main() public {
    uint x = 2 / A;
    require(x == 2 / A);
    x = uint8(2 / uint256(A));
    if(x!= 2) revert();
    x = A / B;
    if(x!= 2) revert();
    uint y = mod(B);
    if(y!= 12) revert();
    uint z = A * B;
    if(z!= 1105) revert();
    if(get()!= 12) revert();
    uint w = uint256(a[0]);
    uint256[] memory a2 = Array.getArray();
    if(a2.length!= 1) revert();
    uint256[] memory b2 = new uint256[](3);
    b2[0] = a2.length;
    bytes memory c = "hi";
    bytes memory d = c;
    if(d.length!= 5) revert();
    bytes memory e = new bytes(5);
    if(e.length!= 5) revert();
  }
}
