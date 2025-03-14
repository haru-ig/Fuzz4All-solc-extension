pragma solidity ^0.8.0;
contract S29Sample
{
    ComplexDifferentMut compDiffMut;
    function doIt(uint x) public returns (uint) {
        uint y;
        y = 100;
        compDiffMut.setModified(0);;
        uint z;
        uint w;
        uint id1;
        uint id2;
        id1 = 0;
        id2 = 1;
        compDiffMut.addPoint(0, x, y);
        compDiffMut.multiplyPoints(0, 3, 2);
        compDiffMut.setModified(1);
    }
}
contract ComplexDifferentStorage
{
  mapping(address => uint) private points;
  function setModified(uint id) public {
      points[address(this).balance] = 0;
  }
  function addPoint(uint id) public {
      points[address(this).balance] += 30000;
  }
  function multiplyPoints(uint id) public {
      points[address(this).balance] ^= 2000;
  }
}
contract S30Sample
{
	ComplexDifferentStorage compDiffStorage;
    function doIt(uint x) public returns (uint) {
        uint y;
        uint z;
        uint w;
        uint id1;
        uint id2;
        id1 = 0;
        id2 = 1;
        compDiffStorage.setModified(0);
        compDiffStorage.addPoint(0);
        compDiffStorage.multiplyPoints(0);
        comp
