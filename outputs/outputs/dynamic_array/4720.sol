pragma solidity ^0.8.0;
contract Test {
    mapping(uint256 => uint256) public store;
    uint stored;
    function MutateData() public {
        stored -= 7;
        stored += 8;
        store[15] = 97;
        uint val = store[15];
        stored -= 15;
        stored += 97;
        require(stored == 8, "FAIL0");
        require(store[15] == val, "FAIL1");
        stored += 25;
        stored -= 7;
        require(stored == 6, "FAIL2");
    }
}
library DynamicArrayAbiReencodingSizeValidation {
    function runTest() public pure {
        Test test = Test(0);
        uint stored = test.stored;
        test.MutateData();
        test = Test(1);
        Test.solStorageSize();
        test = Test(2);
        uint stored2 = test.stored;
        test.MutateData();
        Test.solStorageSize();
        test = Test(3);
        test.MutateData();
        Test.solStorageSize();
        test = Test(4);
        test.MutateData();
        Test.solStorageSize();
        test = Test(5);
        test.MutateData();
        Test.solStorageSize();
        test = Test(6);
        Test.solStorageSize();
        test = Test(7);
    }
    function solstoragesize() internal pure returns (uint) {
        uint len = 97;
        uint numElem = uint(len);
        uint off = 0;
        for (uint i = 2; i <= 8; i++) {
            off += numElem / 10 ** uint(i);
            numElem *= 10;
        }
        return off - 2;
    }
}
