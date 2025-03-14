pragma solidity ^0.8.0;
contract Mutator {
    constructor(int v_) {
        v = v_;
    }
    function testMethod() {
        v = v - 1;
    }
    int internal v;
}
