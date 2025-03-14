pragma solidity ^0.8.0;
contract ConstantAccessBlock6Mutator {
    uint[3] public _uints;
    constructor() {
        _uints = [10, 20, 30];
    }
    function test() public {
        assembly {
            div(10000000000, 1000000000)

        }
    }
}
