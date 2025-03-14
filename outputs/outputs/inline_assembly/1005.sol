pragma solidity ^0.8.0;
contract ComplexStorage
{
    uint8 x = 255;
    uint16 y = 127;
    bytes32 z = keccak256(abi.encodePacked(block.difficulty, block.timestamp, x, y));
    uint constant yMin = 25;
    uint constant yMax = 10000000000000000;
    function setX(uint a) external returns(uint) {
      x = a;
      return x;
    }
    function setY(uint a) external returns(uint) {
      y = a;
      return y;
    }
    function setZ1(uint a) external {
      z = keccak256(abi.encodePacked(block.difficulty, block.timestamp, z));
    }
    function setZ2(uint a) external {
      z = a;
    }
    function getZ() public view returns(bytes32) { return z; }
    function getX() public view returns(uint) { return x; }
    function getY() public view returns(uint) { return y; }
    function getMax() public view returns(uint) { return yMax; }
    function getMaxAbs() public view returns(uint) { return uint(uint8x256(yMax).abs()); }
    function getMin() public view returns(uint) { return yMin; }
    function getMinAbs() public view returns(uint) { return uint(uint8x256(yMin).abs()); }
    function test() public payable {
      x = 333;
    }
}
