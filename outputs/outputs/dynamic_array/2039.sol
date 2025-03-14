pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
    uint256[] public arr;
    uint256[] private _private_arr;

    constructor(uint _arrSize) public {
        uint256[1, 2, 3] memory arr = new uint256[](_arrSize);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[1, 2, 3] memory arr, uint256 idx, uint256 val) internal {
        uint256 t = arr[idx];
        arr[idx] = val;
        arr[t] = t;
    }
}
contract B {
    A public a;
    uint public x;
    B() public {
        x = 1;
    }
    constructor(uint _size) public {
        arr.length = _size;
        a = new A();
    }
}
