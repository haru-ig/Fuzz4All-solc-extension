pragma solidity ^0.8.0;
contract Test43_DynamicArray3 {
    uint[] A = [1, 2, 3];
    uint[] B = [10, 11, 12];
    function push() public {
        A.push([11, 12, 13]);
        B.push([14, 15, 16]);
        A.push([17, 18, 111]);
        B.push([19, 20, 21]);
    }
}

```
