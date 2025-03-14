pragma solidity ^0.8.0;
contract T11FC_call_data_array {
    uint[16] public arr;
    uint public val;
    uint public size;
    function push() {
        size++;
        arr[size-1] = val;
    }
    function pop() {
        if (size == 1)
            revert();

        val = arr[size-1];
        size -= 1;
    }
    function reset() {
        size = 0;
    }
}
