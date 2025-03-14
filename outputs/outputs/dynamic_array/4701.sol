pragma solidity ^0.8.0;
contract MutateData {
    uint constant val0 = 0;
    uint constant val1 = 1;
    uint constant val = 1;
    function MutateData() public {
        data = val;
        store[data] = val1;
        stored += val;
        data += 10 * val;
        require(data == 20, "FAILS1");
        data += val0 * val + val1 * data;
        store[data] -= val0;
        require(data == 20, "FAILS2");
    }
}
