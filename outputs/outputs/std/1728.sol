pragma solidity ^0.8.0;
contract Duplicated2 {
    interface IStore {
        function store(uint _x);
        function get() view returns (uint);
    }
    address [] a;
    IStore b;
    uint c = 1;
    uint d;
}
