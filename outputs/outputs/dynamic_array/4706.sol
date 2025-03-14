pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint stored;
    mapping(uint => uint) public store2;
    function MutateData() public {
        store2[6] += 7;
        stored += 7;
        stored += 15;
        stored += 8;
        require(stored == 11, "FAIL0");
        require(store2[14] == 17, "FAIL1");
        store2[15] -= 8;
        store2[16] += 9;
        store2[17] += 8;
        require(store2[17] == 6, "FAIL2");
    }
}

pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint stored;
    mapping(uint => uint) public store2;
    function MutateData() public {
        store[11] -= 7;
        store[12] += 8;
        store[13] += 7;
        store[14] += 15;
        store[15] += 8;
        stored += 7;
        stored += 8;
        stored += 15;
        stored += 6;
        store2[6] += 7;
        store2[17] += 6;
        require(stored == 16, "FAIL0");
        require(store2[17] == 6, "FAIL1");
        store2[16] += 8;
        store2[17] -= 9;
        require(store2[16] == 6, "FAIL2");
    }
}
