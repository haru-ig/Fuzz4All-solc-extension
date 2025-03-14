pragma solidity ^0.8.0;
contract ContractB is ContractA {
    uint256 constant x = 3;
    constructor() {
        if (x <= 1) {
            x = 4;
        }
    }

    function x() view public returns(uint256) {
        return x;
    }
}
