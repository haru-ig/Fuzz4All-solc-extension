pragma solidity ^0.8.0;
contract ComplexOld {
    struct Point {
    mapping (string => uint) public values;
    bool modified;
    }
    function setModified(uint id) public {
      bytes memory input = bytes(keccak256(abi.encodePacked(Point.values)));
      Point.values["x"] = 0;
      bytes memory y = bytes(keccak256(abi.encodePacked(Point.values)));
    }
    function addPoint(uint id, uint x, uint y) public {
        bytes memory input = bytes(keccak256(abi.encodePacked(Point.values)));
        Point.values["x"] += x;
        bytes memory y = bytes(keccak256(abi.encodePacked(Point.values)));
        y += y;
    }
    function multiplyPoints(uint id, uint x, uint y) public {
      bytes memory input = bytes(keccak256(abi.encodePacked(Point.values)));
      Point.values["x"] *= x;
      bytes memory y = bytes(keccak256(abi.encodePacked(Point.values)));
      y *= y;
    }
}
