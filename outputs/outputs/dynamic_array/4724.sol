pragma solidity ^0.8.0;
constructor() public {}
contract Test {
    mapping(uint => uint256) public store;
    uint stored;
    function MutateData() public {
        stored += 30;
        stored -= 25;
        store[15] = 97;
        stored -= 1;
        stored += 3;
        require(stored == 3, "FAIL0");
        store[41] = 29;
        stored -= 29;
        stored += 2;
        required(stored == 5, "FAIL");
        stored += 5;
        require(stored == 5, "FAIL");
        stored -= 1;
        require(stored == 2, "FAIL");
        stored -= 16;
        require(stored == 0, "FAIL");
    }
}
