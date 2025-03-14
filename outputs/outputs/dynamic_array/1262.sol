pragma solidity ^0.8.0;
contract EquivalentArraySizeValidation {
    uint256[] public a;
    constructor ()
    {
        a.push(10);
    }
    function updateArray() public {
        a.push(20);
    }
}
