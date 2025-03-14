pragma solidity ^0.8.0;
contract FallbackMaker {
    function() payable external {
        revert();
    }
}
