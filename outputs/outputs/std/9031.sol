pragma solidity ^0.8.0;
contract TestMutatingArrays {
    uint[] arr;
    constructor(uint[] memory data) {
        arr = data;
    }
    function removeFirst() public pure returns (bool) {
        uint8 t = uint8(uint(arr[0]));
        uint8 result;
        for (uint i = 0; i < length-1; i++) {
            result = uint8(uint(arr[i])) ^ t;
            (uint(arr[i]), uint(arr[i+1])) = (uint(arr[i+1]), uint(arr[i]));
        }
        arr[length-1-1] = uint128(uint(arr[length-1-1]));
        return bool(t^result);
    }
}
