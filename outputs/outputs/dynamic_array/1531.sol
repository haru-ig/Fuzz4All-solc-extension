pragma solidity ^0.8.0;
contract EfficientDynamicArrayAllocation {
    uint[] public array;
    constructor() public {}
    function Test() public {
        uint256 y;
        for (uint i = 0; i < 1; ++i) {
            array.push(1);
        }
    }
}
