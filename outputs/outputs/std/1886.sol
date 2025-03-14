pragma solidity ^0.8.0;
contract Array {
    uint256[] public array;
    function setElement(uint256 i, uint256 x) public { }
    function set(uint256 _size, uint256 item) public { }
    function length() public view returns (uint256) {}
    function indexOf(uint256 item) public view  returns (uint256) {}
    function max(uint256 a, uint256 b) public view returns (uint256) {}
    function min(uint256 a, uint256 b) public view returns (uint256) {}
    function append(uint256 item) public { }
    function takeFromFront() public view returns (uint256) {}
    function takeFromBack() public view returns (uint256) {}
}
