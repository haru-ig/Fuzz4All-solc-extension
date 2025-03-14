pragma solidity ^0.8.0;
contract Test{
    uint x;
    uint public y;
    address owner;

    constructor () public{
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    function setY(uint _y) public onlyOwner {
        y = _y;
    }
    function test(uint _x) public view returns (uint){
        setY(_x);
        return x;
    }
}
