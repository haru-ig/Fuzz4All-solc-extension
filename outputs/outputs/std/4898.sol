pragma solidity ^0.8.0;
contract MutateWithAddr {
    mapping(address => uint) private _array;
    constructor(address x) public {
        _array[x] = 10000;
    }
    function modifyArray() public {
        uint256 x = address(this);
        uint256 y = address(x);
        _array[x] = _array[x] + 1000;
    }
}
