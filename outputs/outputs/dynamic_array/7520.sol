pragma solidity ^0.8.0;
contract Test43_DynamicArray4 {
    uint[] public a = [1, 2, 3];
    constructor() {
        a.push(4);
        a.push(5);
        a.push(6);
        a[3] = 9;
    }
    function add(uint[] memory _a) public {
        (uint _start, uint _end) = (0, _a.length);
        for (; _end < 8; _end++) {
            uint i = (uint(_end) << 1) + 1;
            _a[_start++] = i;
            _a[_start++] = i + 1;
        }
        _a.push(_a[3] + 1);
    }
}
