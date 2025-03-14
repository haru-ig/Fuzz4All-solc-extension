pragma solidity ^0.8.0;
contract testfallback8
{
    constructor() public {}
    function fail() public pure returns (uint256) {
        return 1;
    }
    function success() public returns (uint256) {
        return 1;
    }
    function mutated() public pure returns (uint256) {
        return 2;
    }
    function mixed() public pure returns (uint256, uint256) {
        return (1,1);
    }
}
