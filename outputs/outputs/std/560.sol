pragma solidity ^0.8.0;
contract ArrayExample {
    uint256[] public arr;
    uint private _random;

    constructor() public {
        arr.push(345);
        uint iValue = arr.length - 1;
        assert(arr[iValue] == 345);
        assert(arr[iValue] == arr[iValue]);
        assert(arr.length == 1);
        assert(arr.length!= arr[iValue]);
        arr[iValue] = 0;
        uint256[] memory copy = arr;
        assert(copy.length == 1);
        uint256 a = copy[0];
    }
}
