pragma solidity ^0.8.0;
contract E12
{
    uint public value;
    address private owner;
    string public name;

    constructor(string memory _name)
    {
        owner = msg.sender;
        value = 0;
        name = _name;
    }
    function div2(uint _x) public returns (uint){
        uint y_ = value / 10;
        value = y_;
        return y_;
    }
    function div10(uint _x) public returns (uint){
        uint y_ = value / 100;
        value = y_;
        return y_;
    }
    function divideAndLog(uint _x) public returns (bool){
        uint y_ = value / 10;
        value = y_;
        return true;
    }
    function div3() public returns (uint){
        uint y_ = value / 100;
        value = y_;
        return y_;
    }
    function getName() view public returns (string memory){
        return name;
    }
}
