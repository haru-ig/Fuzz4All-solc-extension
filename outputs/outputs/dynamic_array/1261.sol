pragma solidity ^0.8.0;
contract NotMutatedArraySizeValidation {
    uint256[] a;
    constructor ()
    {
        a.push();
    }
    function updateArray() public {
        a.push();
    }
}
