pragma solidity ^0.8.0;
contract Test43_DynamicArray2 {
    function add(uint[] storage _a) public {
        (uint _start, uint _end) = (0, _a.length);
        uint i = 1;
        for (; i <= _end; i += 2) {
            _a[_start] = 1;
            _start++;
            _a[_start] = 3;
            _start++;
        }
    }
}
