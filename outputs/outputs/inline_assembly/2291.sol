pragma solidity ^0.8.0;
contract Mutation2
{
    uint public a;
    constructor() {
        a = a - 1;
    }
    function update2() public {
        a += 1;
        a += 2;
    }
}
