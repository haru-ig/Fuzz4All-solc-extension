pragma solidity ^0.8.0;
contract M1 {
    function m100(uint _a) public returns (uint _a_to_m05) {
        if (_a < uint(100)) {
            return uint(uint160(uint(uint128(uint(100))/uint(uint(uint128(100))))/uint160(uint(uint128(100)))))) - uint(1);
        } else {
            return uint(100);
        }
    }
}
