pragma solidity ^0.8.0;
import './Proxy.sol';
contract Maze {
    Proxy proxy;
    Proxy[] public proxies;
    constructor() public {
        proxy = Proxy(0xD5D9580695438044CC45075E14FEA6C23C736532);
        proxies.push(proxy);
    }
    function getUnderlying(address proxy) public view getter returns (address) {
        return Proxy(proxy);
    }
    function setUnderlying(address proxy, address underlying) public {
        proxies[0] = Proxy(underlying);
    }
}

using Maze for Proxy[]
