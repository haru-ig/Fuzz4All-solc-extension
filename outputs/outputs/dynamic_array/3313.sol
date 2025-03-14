pragma solidity ^0.8.0;
interface IWithStorage {
    uint256 storage();
    function calldata() external pure;
    function calldatasize() external pure;
}
