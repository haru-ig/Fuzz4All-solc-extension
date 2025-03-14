pragma solidity ^0.8.0;
contract Test {
    uint public data;
    uint public stored;
    function MutateData(uint newData) public {
        data = newData + 1;
        stored += newData;
        require(stored > data, "FAILS");
        require(data == 2, "FAILS");
    }
}
