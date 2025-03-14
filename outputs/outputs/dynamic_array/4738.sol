pragma solidity ^0.8.0;
contract Test {
    struct TestNested { uint value; uint num; mapping(uint => uint256) data; }
    mapping (uint => TestNested) public storeNested;
    function MutateData() public {
        TestNested storage nested = storeNested[15];
        nested.value = 99;
        nested.num /= 1000;
        nested.data[100] /= 1000;
        nested.data[255] *= 100;
        nested.data[256] -= 1;
        require(nested.value == 0, "FAIL0");
        require(nested.num == 36, "FAIL1");
        require(nested.data[256] == 0xff, "FAIL2");
        nested.data[257] += 1;
        require(nested.value == 0, "FAIL3");
    }
}
