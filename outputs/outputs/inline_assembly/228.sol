pragma solidity ^0.8.0;
contract E12
{
    mapping (address => uint) public funds;
    constructor(uint _x) public {
        funds[msg.sender] = _x * 10;
    }
    function divideAndLog(uint _x) public returns (uint) {
        uint y_ = funds[msg.sender] / 10;
        require(_x >= 0,(msg.sender));
        funds[msg.sender] = y_;
        return y_;
    }
}

pragma solidity ^0.8.0;
contract E13
{
    mapping (address => uint) public funds;
    constructor(uint _x) public {
        funds[msg.sender] = _x;
    }
    function divideAndLog(uint _x) public returns (bool) {
        uint y_ = funds[msg.sender] / 10;
        require(_x >= 0,(msg.sender));
        funds[msg.sender] = y_;
        return true;
    }
}

pragma solidity ^0.8.0;
contract E14
{
    mapping (address => uint) public funds;
    constructor(uint _x) public {
        funds[msg.sender] = _x;
    }
    function divideAndLog(uint _x) public returns (uint) {
        uint y_ = funds[msg.sender] / 10;
        require(_x >= 0,(msg.sender));
        funds[msg.sender] = y_;
        return 0;
    }
}
