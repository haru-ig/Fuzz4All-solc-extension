pragma solidity ^0.8.0;
contract StaticArraysWithoutReleases {
    contract MutatingReturnsArraysWithoutReleases {};
    function add123(uint256 x) public  returns (uint256 z) {
        z = x + 123;
        return z;
    }
    function subtract7(uint256 x) public  returns (uint256 z) {
        z = x - 7;
        return z;
    }
    uint256[] public staticMemoryArrayWithoutReleases;
    address x;
    uint256 z;
}

















contract DynamicArraysWithoutReleases {
    function calculateMemoryAndGasUsageWithoutReleases() public view returns( uint, uint ) {
        uint memoryUsageWithoutReleases = 0;
        for ( uint256 x = 0; x < 3; x++) {
            memoryUsageWithoutReleases += 3 * sizeof(uint256);
        }
        uint gasUsedWithoutReleases = 3 * 4;
        return (memoryUsageWithoutReleases, gasUsedWithoutReleases);
    }
    function add123() public returns( uint256 z ) {
        z =
