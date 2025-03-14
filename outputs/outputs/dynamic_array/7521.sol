pragma solidity ^0.8.0;

contract Test43_DynamicArray2 {
    uint[] A = [1, 2, 3];
    uint[] B = [10, 11, 12];

    constructor() public {}

    function push() public {
        A.push(11);
        B.push(12);
        A.push(13);
        B.push(14);
    }
}
