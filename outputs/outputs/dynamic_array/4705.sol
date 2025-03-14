pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint stored;
    function MutateData() public {
        stored += 7;
        stored -= 8;
        store[15] = 7;
        stored += 7;
        stored -= 15;
        require(stored == 8, "FAIL0");
        require(store[15] == 6, "FAIL1");
        store[9] = 5;
        store[14] = 8;
        require(store[9] == 5, "FAIL2");
        require(store[14] == 6, "FAIL3");
    }
}
