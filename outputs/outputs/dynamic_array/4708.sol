pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) immutable public store;
    uint stored;
    function MutateData() public {
        stored += 10;
        stored -= 7;
        require(stored == 10, "FAIL0");
        require(store[7] == 7, "FAIL1");
    }
}
