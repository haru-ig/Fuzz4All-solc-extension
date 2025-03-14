pragma solidity ^0.8.0;
contract Test is B {
    bool public b;
    constructor() public {
        b = true;
        require(block.timestamp > block.number, "Time not too far in the future");
    }
    function revertTrue() public nonpayable {
        revert();
    }
    function revertFalse() public nonpayable {
        revert();
    }
}
