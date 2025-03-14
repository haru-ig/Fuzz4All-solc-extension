pragma solidity ^0.8.0;
contract A {
    B[] public a;
    constructor() {
        a.push(new B());
    }
    function get() public view returns (int) {
        return a.length;
    }
}

contract B {
    uint88[] public a;
    constructor() {
        a.push(uint88(128));
    }
}
