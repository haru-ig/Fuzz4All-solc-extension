pragma solidity ^0.8.0;
contract EvmFabric {
    mapping (address => uint[]) a;
}
contract MutatedFabric {
    mapping (address => uint[]) x;
    mapping (address => address[]) y;
}
