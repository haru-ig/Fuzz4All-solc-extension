pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public store;
    uint stored;
    function MutateData() public {
        stored -= 7;
        stored += 8;
        require(store.get(15) == 99, "FAIL0");
        store.set(15, 99);
        require(stored == 8, "FAIL1");
        stored += 25;
        stored -= 7;
        require(stored == 6, "FAIL2");
    }
}
