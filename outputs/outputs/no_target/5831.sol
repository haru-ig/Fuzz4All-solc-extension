pragma solidity ^0.8.0;
contract C {
    uint[] arr;
    uint z;
    function f() private pure {
        unsafe {
            arr[0] = 1;
        }
        unsafe {
            z = 0;
            z = arr.length;
        }
    }
}
