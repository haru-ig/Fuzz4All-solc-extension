pragma solidity ^0.8.0;
contract FallbackError {
   uint public x;

    function fallbackError() public {
        x = 10;
    }

    function () public {
        revert();
    }
}
