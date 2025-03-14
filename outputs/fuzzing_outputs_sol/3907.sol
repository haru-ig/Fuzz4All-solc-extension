pragma solidity ^0.8.0;
contract Example7 {
}


contract Caller {
    bytes32 public errorMessage;
    address public contractAddress;

    constructor () public {
        contractAddress = address(new Example7());
    }


    function () public payable {
        errorMessage = "Fallback was executed";
        return;
    }

    function example4() public payable {
        errorMessage = "Function example4 was called.";
    }
}
