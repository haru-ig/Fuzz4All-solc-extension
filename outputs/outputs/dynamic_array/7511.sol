pragma solidity ^0.8.0;
contract Test43_DynamicArray1 {
    uint[] public a = [1, 2, 3];
    constructor() {
        add(a);
        add(a);
        add(a);
    }
    function add(uint[] memory _a) public {
        (uint _start, uint _end) = (0, _a.length);
        for (; _end < 8; _end++) {
            uint i = (uint(_end) << 1) + 1;
            _a[_start++] = 1;
            _a[_start++] = 2;
        }
    }
}
