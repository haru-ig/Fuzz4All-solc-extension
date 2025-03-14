pragma solidity ^0.8.0;
contract New {
    function new(uint _a) pure public returns(uint) {
        if (_a == 0) {
            return 0;
        }
        return 1 / old(_a);
    }
}
