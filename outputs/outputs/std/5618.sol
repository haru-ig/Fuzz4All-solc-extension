pragma solidity ^0.8.0;
contract M254{
    uint public x = 251;
    address public owner;
    uint public s = uint(keccak256(block.blockhash(0), blockhash(1)))%2**32;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
        msg.sender == owner;
        _;
    }
    function add(uint y) public onlyOwner{
        x=x+y;
    }
    function sub(uint y) public onlyOwner{
        x=x-y;
    }
    function setAdd(uint y) public onlyOwner{
        x=x+y;
    }
    function setSub(uint y) public onlyOwner{
        x=x-y;
    }
    function setAddMult(uint y) public onlyOwner{
        x=x+(s*y);
    }
    function setSubMult(uint y) public onlyOwner{
        x=x-(s*y);
    }
}
