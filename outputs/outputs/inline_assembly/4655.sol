pragma solidity ^0.8.0;
contract mutator83 {
    bytes memory x = bytes.memory{1,2,3,4,5,6,7,8,9,10,11,12,13};
    function f(uint _data) public view returns (uint) {
    return (_data + x.length); }
    function g(bytes _data) public pure returns (uint) {
    return (15 + 34); }
    function h() public pure returns (bytes memory) {
    x = x + bytes(5,15,2,2,2,2,2,2,2,3,3,3,3,3);
    return x;}
    constructor() {
      } }
