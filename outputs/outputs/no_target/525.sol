pragma solidity ^0.8.0;
contract B {
    	uint256 public value = 1;
}
contract A is B {
    uint256 public immutable x;
    function () public {
        x = 2;
    }
}
