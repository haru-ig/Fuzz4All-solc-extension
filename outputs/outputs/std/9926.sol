pragma solidity ^0.8.0;
contract A {
    uint8 internal b;
    constructor(){}
    receive () payable{}
    receive () public {}
}
contract B is A {
    uint8 internal c;
    constructor() {}
    receive () public {}
    receive () public {}
}
