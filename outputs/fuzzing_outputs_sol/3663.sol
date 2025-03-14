pragma solidity ^0.8.0;
contract MutateSemantic6Caller4 {
    uint x = 77;
    uint y = 42;
    address owner;
    constructor() {
        owner = msg.sender;
    }
    fallback() {
        if (msg.data.length > 0) _error();
    }
    receive() {
        if (msg.data.length > 0) _error();
    }
    function mod() payable public returns (uint) {
        return 168;
    }
    function _error() private pure {}
    modifier onlyOwner(){
        require(msg.sender == owner, "Error: You can only modify the Owners contracts");
        _;
    }
}
