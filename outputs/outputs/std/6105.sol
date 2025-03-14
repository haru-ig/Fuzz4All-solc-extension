pragma solidity ^0.8.0;
contract TestArrayMutable {
    uint32 count;
    uint32 length;
    uint32[256] immutable public a;
    function get(uint32 index) public view returns (uint) {
        count++;
        length++;
        if (index < count) {
            return a[index];

        } else {
            return 0;
        }

    }
    function push(uint32 value) public {
        a[length] = value;
    }
}
