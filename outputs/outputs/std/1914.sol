pragma solidity ^0.8.0;
contract ArraysMutated1 is ArraysMutated2 {
    function array() public {
        uint[10] memory arr;
        arr[1] = 255;
        if (arr[8]++ == uint(arr[9])){
            revert("Counter Overflow");
        }
    }
}
