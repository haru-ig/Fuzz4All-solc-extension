pragma solidity ^0.8.0;
contract Caller {
    bytes32 myMethod;

    function() external payable {
        myMethod = "OK";
    }

    fallback function() external {
        myMethod = "WRONG";
    }
}
