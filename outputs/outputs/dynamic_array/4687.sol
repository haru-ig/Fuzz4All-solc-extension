pragma solidity ^0.8.0;
contract Test {
    uint public data;
    mapping(uint => address) public store;
    uint stored = data;
    function MutateData(uint newData) public {
        store[data] = msg.sender;
        data = newData + 1;
        stored += newData;
    }
}
