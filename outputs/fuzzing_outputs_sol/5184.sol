pragma solidity ^0.8.0;
contract C {
    constructor(uint num) {
        doSomething(payable(new C21()));
    }

    fallback() external payable {}


    receive () external payable {}
    receive() payable external {}
    receive() external receive(uint) {}
    receive() external payable payable external {}


    receive() external payable {}
    receive() external receive(uint) {}
    receive() external payable payable external {}
}
contract C123 {
    constructor(uint num) {
        doSomething(payable(new C21));
    }
    function doSomething(C21 c) public {}

    fallback() payable external {}
    fallback() external receive(uint) payable {}
    fallback() external receive(uint) payable external {}
    fallback() external receive(uint) external {}
    fallback() external receive(uint) external external {}
    fallback() external receive(uint) external external external {}
    fallback() external receive(uint) external external external external {}
}
