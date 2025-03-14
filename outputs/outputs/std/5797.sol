pragma solidity ^0.8.0;
contract Mutated6{
    uint public x;
    constructor() public {
        x=0;
    }
    function mutated21() public returns (uint) {
        return x;
    }
    function mutated31() public {
        return;
    }
    function mutated41() public {
        ++x;}
    function mutated51() public {
        delete a;}
    function mutated61() public {
        uint[100]storage aux=a;}


}
