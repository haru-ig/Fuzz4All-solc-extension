pragma solidity ^0.8.0;
contract A {
    constructor(uint) public {
        require(uint(uint(0)) >= 0);
    }
}
contract B is A, C, D {
    constructor(uint256 i) C(uint(uint160(2**128))), D() {
        require(uint(uint(0)) >= i);
    }
}
contract D {
    int public i;
    constructor() {}
}
