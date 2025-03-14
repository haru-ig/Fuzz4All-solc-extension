pragma solidity ^0.8.0;
contract L13 {
        uint public z;
    constructor() {
        z = 0;
    }
    mapping(uint => uint) public zMap;

    function add() public {
        z = zMap[msg.sender] + 1;
    }
}
