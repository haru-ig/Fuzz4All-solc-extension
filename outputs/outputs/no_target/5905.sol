pragma solidity ^0.8.0;
contract C {
    address private _foo;
    constructor() {
        _foo = address(new C());
    }
}
