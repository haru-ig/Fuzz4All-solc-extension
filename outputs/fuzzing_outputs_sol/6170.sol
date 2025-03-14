pragma solidity ^0.8.0;
contract Mutant {
    constructor() public {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
    function fail() public {
        throw;
    }
}
contract FallbackMutant {
    constructor() public {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
    function normalCall() public payable {
    }
}
contract ExternalCallMutant {
    constructor() public {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
    function externalCall() public payable {
    }
    function fail() public {
        throw;
    }
}
contract InternalCallMutant {
    constructor() public {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
    function internalCall() public payable {
    }
    function fail() public {
        throw;
    }
}
