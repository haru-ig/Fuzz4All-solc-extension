pragma solidity ^0.8.0;
contract C {
    uint256 public y;
    constructor () public {
        C.addTwoX();
    }
    function addTwoX() public {
        y = Lib.addAndSub(3,5) + y;
        y += y * 2;
    }
}
