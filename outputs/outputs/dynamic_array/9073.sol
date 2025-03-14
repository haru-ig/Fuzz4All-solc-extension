pragma solidity ^0.8.0;
import "./IAddressable.sol";
contract DynamicArrayTest {
    address addrA;
    function fA() external payable {
        IAddressable(addrA).storeWithSize(uint[](1));
        IAddressable(addrA).storeWithSize(uint[](2));
    }
