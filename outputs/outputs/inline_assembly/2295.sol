pragma solidity ^0.8.0;
contract Mutation2
{
    uint public a;
    constructor() {
        a = a - 1;
    }
    function update() public {
        a = a * 10;
    }
}
