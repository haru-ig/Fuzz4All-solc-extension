pragma solidity ^0.8.0;
contract Test43_DynamicArray3 {
    uint[] A = [1, 2, 3];
    uint[] B = [10, 11, 12];
    constructor() public {}
    function push() public {
        assignArray(A);
        assignArray(B);
        assignArray(A);
        assignArray(B);
    }
    function assignArray(uint[] memory _array) public {
        _array.push(13);
        _array.push(14);
        _array.push(15);
    }
}
