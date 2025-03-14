pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public store;
    uint stored;
    function MutateData() public {
        stored -= 7;
        stored += 8;
        store[15] = 15;
        stored -= 15;
        stored += 15;
        require(stored == 8, "FAIL0");
        require(store[15] == 17, "FAIL1");
        stored += 25;
        stored -= 7;
        require(stored == 6, "FAIL2");
    }
}
