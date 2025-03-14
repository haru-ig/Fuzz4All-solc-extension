pragma solidity ^0.8.0;
contract Caller {
    uint x=0;
    event CallBack(uint i);
    constructor() {x = 42;}
    function setX() public{
        x = 84;
        emit CallBack(x);
    }
}

pragma solidity ^0.8.0;
contract Caller{
    uint x=42;
    event CallBack(uint i);
    constructor(){x = 42;}
    receive() payable {
        x += 1;
        emit CallBack(x);
    }
}
