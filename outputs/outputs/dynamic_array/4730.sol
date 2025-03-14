pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    function MutateData() public {
        int256 i = 99;
        bytes b1 = "";
        uint8 b2 = 0x5;
        uint b3 = 0x5;
        uint256 b4 = 0x5;
        store[15] = 99;
        store[100] /= i;
        store[255] *= b1;
        store[256] -= b2;
        require(store[15] == 0, "FAIL0");
        i = 100;
        b1 = "test";
        b3 = 5;
        b4 = uint256(5);
        store[257] += b3;
        require(store[15] == 0, "FAIL1");
    }
}
