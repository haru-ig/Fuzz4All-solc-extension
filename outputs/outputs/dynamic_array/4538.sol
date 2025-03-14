pragma solidity ^0.8.0;
import "./Proxy.sol";
contract DynamicCalldataContract {
    function getUnderlying(uint[]) external view returns (address) { return address(new Proxy()); }
}
