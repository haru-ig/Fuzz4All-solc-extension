pragma solidity ^0.8.0;

contract Contract {
    struct Token {
        uint value;
        uint counter;
    }
    Token public token;
    constructor() {
    }
    function set(uint value) public {
        token.value = value;
    }

    function read() public view returns (uint) {
        return token.value;
    }

    function inc() public {
        token.counter += 1;
    }
}
