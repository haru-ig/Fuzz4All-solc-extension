pragma solidity ^0.8.0;
contract NamelessCallerFallback {
    string public version;
    constructor() {
        version = "1.0.0";
    }
    function fallback() public payable returns (string memory) {
        emit Fallback();
        return "Fallback";
    }
}
