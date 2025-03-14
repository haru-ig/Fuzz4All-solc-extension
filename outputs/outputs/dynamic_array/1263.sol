pragma solidity ^0.8.0;
contract EquivalentArraySizeValidation {
    uint256[3] a;
    constructor ()
    {
        a.push(10);
    }
    function updateArray() public {
        a.push(20);
        delete a[2];
    }
}
