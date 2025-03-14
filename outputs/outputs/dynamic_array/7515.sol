pragma solidity ^0.8.0;
contract Test44_DynamicArray2 {
    uint[] public a = [1, 2, 3];
    constructor() {

        add(A{arr:_a});
    }
    function add(A memory _a) public {
        uint[] memory _arr = _a.arr;
        (uint _start, uint _end) = (_a.idx0, 250);
        for (; _end < 8; _end++) {
            uint i = (uint(_end) << 1) + 1;
            _arr[_start++] = _arr[_start++];
            _arr[_start++] = _arr[_start++];
        }
    }
}
