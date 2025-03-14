pragma solidity ^0.8.0;
contract B {
    uint[] public array1;
    uint256[] public array2;
    A public array3;

    A[] public array4;
    A[3][] public array5;
    A[4][6] public array6;

    mapping(uint => address) public map;

    mapping (address => uint) public reverseMap;

    constructor(uint x) {
        f1 = x;
        f2 = f1 + x;
        f3 = f1 + f2;
        f4 = 3 * (f1 + f2 + f3);
    }

    function getArray1() public view returns (uint[]) {
        return array1;
    }
}
