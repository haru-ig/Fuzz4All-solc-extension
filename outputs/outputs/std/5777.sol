pragma solidity ^0.8.0;
contract Mutated41{
    uint[] public a;
    address public b;
    bytes32 private d;
    constructor(){
        a = new uint[](1);
        a[0] = 1;
        b = address(0);
    }
    function mutated114550(uint _a, uint _b);
    function mutated41() public returns (uint) {
        return mutated114550();
    }
}
