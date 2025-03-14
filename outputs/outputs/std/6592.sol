pragma solidity ^0.8.0;
struct Mutate21 {
  uint32 x;
}
contract Mutate22 {
    uint32 x;
    function getX() public view returns (uint32 memory) {
      this.x = x + 1;
      return this.x;
    }
}

pragma solidity ^0.8.0;
contract Mutate23 {
    uint32 x;
    function setX(uint32 _x) public view noPublicModification returns (uint32 memory) {
      this.x = _x;
    }
}
contract Mutate16 {
    struct NonPublicStruct {
        uint32 x;
        uint32 y;
        uint32 z;
    }
    function f() public view returns (NonPublicStruct memory) {
      this.x = 25;

      this.y = this.x++;
      this.z = this.x++;
      uint32 z = this.x + this.y + 10 * this.z + 100 + 123;
      return NonPublicStruct(1, 4, 9);
    }
}
contract Mutate17 {
    function f(address x) public view returns (bytes32 a) {
      return keccak256(abi.encode(x));
    }
}
struct Mutate18 {
  address x;
}
struct Mutate19 {
  address x;
}
contract Mutate20 {
    function f(uint32 x) public view returns (address memory a, uint32 b) {
      uint32 y = 0;
      for (uint32 i = 0; i < x; i += 1) for (uint32 j = 0; j <= y; j += 1) for (uint32 k = 0; k <= y + 10; k += 1)  { y += k + 50; }
      return (address(this), y);
    }
}
contract Mutate24 {
    function f() public view returns (Mutate23 memory) {
      this.x[0].x = 3;
      return this;
    }
}
contract Mutate25 {
    function f(uint32[] memory v) public view returns (uint32[] memory, uint32[] memory) {
      for (uint32 m; v.length > --m) v[m] = 2;
      for (uint32 m; --v
