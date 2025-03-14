pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public store;
    uint stored;
    uint public len;
    uint public capacity;
    array(uint256) public testarray;
    function Set() public {
        require(stored == 0, "FAIL0");
        stored = 119;
        len = 99;
        capacity = 97;
        testarray[0] = 9;

        testarray[-1] = 21;

        require(21 <= len);

        require(len == 99);

        testarray[100] = 21;
        require(21 > len);

        require(len == 99);

        require(testarray.length > 110);
        testarray[110] = 21;
        require(testarray.length == 110);
    }
}
