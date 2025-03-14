pragma solidity ^0.8.0;
contract MyContract {
    uint public number;
    constructor() {
        number += 1;
    }
    function x() pure public returns (uint) {
        return 1 - number;
    }
    function y() pure public returns (uint) {
        return 1 / number;
    }
}
