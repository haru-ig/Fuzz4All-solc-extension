pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    mapping(address => uint256) public x;
    uint256[] public rando;
    void add(uint256 _y) public {
        rando.push(x[msg.sender]) +=_y;
    }
    function modify(uint256 _y) public {
        x[msg.sender]+=1;
        x[msg.sender]+=_y;
    }
}
