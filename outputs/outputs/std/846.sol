pragma solidity ^0.8.0;
contract Same7
{
    uint number;
constructor(uint n) public {
number = n;
}
function mutationTest() public pure {
if (contract(0x123).address == contract(0x456).address) {
    return;
}
}
}
