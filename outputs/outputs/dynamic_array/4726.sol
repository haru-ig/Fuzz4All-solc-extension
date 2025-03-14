pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public store;
    function MutateData() public {
        store[15] = 99;
        store[100] /= 1000;
        store[255] *= 100;
        store[256] -= 1;
        require(store[15] == 0, "FAIL0");
        require(store[132] == 99, "FAIL1");
        require(store[256] == 0xff, "FAIL2");
        store[257] += 1;
        require(store[15] == 0, "FAIL3");
    }
}
