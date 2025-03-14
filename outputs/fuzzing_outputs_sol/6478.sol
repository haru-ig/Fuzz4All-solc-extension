pragma solidity ^0.8.0;

contract D {
    function bar() public {
        address payable p = payable(uint256(1));
        p.payableCall{value:1}("");
    }
}
