pragma solidity ^0.8.0;
contract Mutations {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    address public owner;
    constructor(uint256 _b, uint256 _value) public{
        b = _b % type(uint256).max;
        a = b * _b;
        c = (a * b) % (b + value);
        if(b > 42) {
            c++;
        }
        if(type(uint256).max >= b) {
            c--;
        }
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "!the owner");
        _;
    }
}
address address_;
function log(uint256 log) internal{
    address_ = msg.sender;
}
modifier onlyOwner() {
    require(msg.sender == owner, "!the owner");
    _;
}
