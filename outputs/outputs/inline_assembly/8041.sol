pragma solidity ^0.8.0;
contract MultiReturn0x542 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    mapping (uint => uint) public map;
    mapping ( uint => uint) public testx;
    function mutated(uint _num) public returns (uint, uint) {
      uint b = testx[2];
      uint a = 1000;
      return (a + _num, a + _num + _num);
    }
    function mutatedTest() public returns (uint) {
        x /= 2;
        num = 5000;
        map[1] = 1;
        map[2] = 0;
        return 50;
    }
}
