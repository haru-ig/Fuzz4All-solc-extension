pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored = data;
    function MutateData(uint newData) public {
        store[data] = newData;
        data = newData + 1;
        require(data == 3, "FAILS1");
    }
}
