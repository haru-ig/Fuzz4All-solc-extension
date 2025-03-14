pragma solidity ^0.8.0;
contract Caller
{
    constructor()
    {}
    fallback() public payable returns (uint x){
        uint a = 0;
        x = 10;
        a = a * x;
    }
    receive() public payable {}
}


contract Fallback
{
    constructor()
    {}
    fallback() public payable{}
}
