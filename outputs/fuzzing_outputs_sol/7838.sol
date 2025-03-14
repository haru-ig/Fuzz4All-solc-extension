pragma solidity ^0.8.0;
contract FallbackExample {
    address payable payee;
    receive() external payable {}
    constructor() {}
}
contract TwoFallbackExample {
    address payable payee;
    receive() external payable {}
    constructor() {}
}
