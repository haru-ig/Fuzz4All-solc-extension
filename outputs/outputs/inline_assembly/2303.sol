pragma solidity ^0.8.0;
contract Mutation3
{
    uint public a;
    constructor() {
        a = address(this);
    }
    function update() public {
        a  = a.add(1);
    }
}
