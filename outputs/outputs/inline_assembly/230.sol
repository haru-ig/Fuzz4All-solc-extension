pragma solidity ^0.8.0;
contract E12
{
    mapping (address => uint) public funds;
    constructor(uint _x) public {
        funds[msg.sender] = 10;
    }
    function divideAndLog(uint _x) public returns (bytes32 success) {
        uint y_ = (uint(msg.sender)) / 10;
        if (y_ == 10) {
            funds[msg.sender] = 10;
            return bytes32(0);
        } else {
            funds[msg.sender] = y_ - 1;
            return bytes32(0);
        }
    }
}

pragma solidity ^0.8.0;
contract E12
{
    mapping (address => uint) public funds;
    constructor(uint _x) public {
        funds[msg.sender] = 10;
    }
    function divideAndLog(uint _x) public inline returns (bytes32 success) {
        uint y_ = (uint(msg.sender)) / 10;
        if (y_ == 10) {
            funds[msg.sender] = 10;
            return bytes32(0);
        } else {
            funds[msg.sender] = y_ - 1;
            return bytes32(0);
        }
    }
}

pragma solidity ^0.8.0;
contract E12
{
    mapping (address => uint) public funds;
    constructor(uint _x) public {
        funds[msg.sender] = 10;
    }
    function divideAndLog(uint _x) public (bytes32 success) {
        uint y_ = (uint(msg.sender)) / 10;
        if (y_ == 10) {
            funds[msg.sender] = 10;
            return bytes32(0);
        } else {
            funds[msg.sender] = y_ - 1;
            return bytes32(0);
        }
    }
}

pragma solidity ^0.8.0;
contract E12
{
    mapping (address => uint) public funds;
    constructor(uint _x) public
