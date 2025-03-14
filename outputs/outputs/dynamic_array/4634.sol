pragma solidity ^0.8.0;
interface Isolate {
    event IsolateStored(bytes32 id, bytes32 value);
    event IsolateRemoved(bytes32 id);

    function read(bytes32 id) public view returns(bytes32);

    function store(bytes32 id, bytes32 value) public;

    function remove(bytes32 id) public returns(uint256);
}
