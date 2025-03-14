pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint stored;
    mapping(uint => uint) public store2;
    function MutateData() public {
        store[8] = 6;
        stored += 6;
        stored -= 8;
        store2[7] = 15;
        stored -= 15;
        require(stored == 6, "FAIL0");
        require(store2[7] == 6, "FAIL1");
        store2[8] = 9;
        store2[9] = 8;
        require(store2[8] == 6, "FAIL2");
    }
}
