pragma solidity ^0.8.0;
contract FixedDynamicArraySolidity1 {
    constructor() { }
    function FixedArraySolidity1() public {
        uint256[] memory arr = new uint256[](10);
        for (uint i = 0; i < 10; i++) {
            arr[i] = uint256(i);
        }
    }
}
