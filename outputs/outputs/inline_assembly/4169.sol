pragma solidity ^0.8.0;
contract Mutators {
    function test_1 () public returns (uint256 res) {
        uint256 _a = 1;
        res = test_2(res);
        _a = res;
        res += 9;
        res = _a - 1;
        res /= 2;
    }
}
