pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    mapping(uint => uint) public mapStore;
    uint d1;
    uint d2;
    uint stored;
    function MutateStore() public {
        store[d1] += d2;
        mapStore[d2] += mapStore[d2];
        require(d2 == 2, "FAIL");
        require(store[stored] == 4, "FAIL");
        uint value = d1 + d2;
        require(value == 6, "FAIL2");
        stored += value;
        require(stored == 10, "FAIL3");
    }
}
