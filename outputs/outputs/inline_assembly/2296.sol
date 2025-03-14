pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    constructor() {
        a = a.sub(1);
    }
    function update2() public {
        a = a.mul(2);
    }
}
