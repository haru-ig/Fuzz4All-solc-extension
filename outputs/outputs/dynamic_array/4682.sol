pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored = data;
    function MutateData(uint newData) public {
        store[data] = newData;
        data = newData + 1;
        stored += newData;
        require(stored > data, "FAILS1");
        require(data == 2, "FAILS2");
        store[3] = stored + 1;
    }
}
