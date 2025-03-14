pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public store;
    function MutateData() public {
        stored -= 7;
        stored += 8;
        store[15] = 15;
        stored -= 15;
        stored += 15;
        require(stored == 8, "FAIL0");
        require(store[15] == 17, "FAIL1");
        stored += 10;
        for (uint x = 0; x < 7; x++) {
            stored -= 5;
            stored += 5;
        }
        require(stored == 4820, "FAIL2");
    }
}
