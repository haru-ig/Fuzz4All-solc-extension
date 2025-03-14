pragma solidity ^0.8.0;
contract Test {
    uint[] public store;
    uint[] data;
    uint[] stored;
    function MutateData() public {
        data = new uint[](5);
        require(data.length == 5, "FAILS");
        uint value = data[4] + 1;
        require(value == 6, "FAILS");
        store[4] = value;
        stored.push(value);
        require(stored.length == 1, "FAILS2");
        require(stored[0] == value, "FAILS2_2");
        stored.pop();
        require(stored.length == 0, "FAILS3");
        stored.push(store[3] + 1);
        require(stored.length == 6, "FAILS4");
        stored.pop();
        data.push(store[2]);
        require(data.length == 6, "FAILS5");
        data.pop();
        for (uint i = 0; i < data.length; i++) {
                stored.push(data[i] + 1);
        }
        require(stored.length == 12, "FAILS6");
        for (uint i = 0; i < stored.length; i++) {
                data.push(data[i] + 1);
        }
        require(data.length == 12, "FAILS7");
    }
}
