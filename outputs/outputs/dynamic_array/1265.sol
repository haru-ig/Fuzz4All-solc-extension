pragma solidity ^0.8.0;
contract EquivalentArrayAbiReencodingSizeValidation {
    uint128[] public x;
    constructor ()
    {
        x.push(0x01000000001234567890abcdef);
    }
    function updateArray() public payable {
        x.push(0x02000000001234567890abcdef);
    }
}
