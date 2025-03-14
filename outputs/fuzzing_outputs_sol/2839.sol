pragma solidity ^0.8.0;
uint256 constant _A = 0;
contract A {
    constructor() {
        _A;
    }

    fallback() external payable {
    }
}
contract B is Upgrader2 {
    constructor() {
        _A;
    }

    receive() payable external {
        _A;
    }
}
contract C {
    uint256 constant _A;

    constructor() {
        _A;
    }

    fallback() external payable {
        _A;
    }
}
contract D is Upgrader1 {
    constructor() {
        _A;
    }

    fallback(uint256 a) external payable {
        _A;
    }

    receive() payable external {
        _A;
    }
}
contract E is Upgrader2 {
    constructor() {
        _A;
    }

    fallback() external payable {
        _A;
    }

    receive() payable external {
        _A;
    }
}
