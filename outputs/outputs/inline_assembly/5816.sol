pragma solidity ^0.8.0;
contract MutatedBlock5Mutation2 {
    uint _x;
    uint _y;
    function test() public view returns (uint) {
      return _y + _x;
    }
}
