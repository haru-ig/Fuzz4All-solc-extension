pragma solidity ^0.8.0;

interface Proxy {
    function getUnderlying(address) external view returns (address);
}
