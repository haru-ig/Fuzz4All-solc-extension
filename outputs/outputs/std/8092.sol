pragma solidity ^0.8.0;
contract Array {
    uint1[] public arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    uint8 _a;
    uint[5] public  arr2 = [_a, _a, _a, _a, _a];

    function set(uint256 val) public {
        uint1 n = _a;
        _a = val;
        arr2[n] = val;
    }
}
