pragma solidity ^0.8.0;

contract Caller {

    function fallback() public payable default {
        revert("fallback called");
    }

    function() external payable default {
        revert("fallback called");
    }
}
