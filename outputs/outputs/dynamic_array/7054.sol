pragma solidity ^0.8.0;
contract NoTest3
{
    struct test
    {
        uint8 test1;
        mapping (bytes32=>uint8) test2;
        uint8 test3;
    }

    constructor()public
    {
        test storage test2 = test.test2;
        uint8[] memory test4=new uint8[](0);
    }
    test function readData()view returns (test memory, uint8[] memory)
    {
        test memory test;
        test.test2.test2["1"][0]=2;
    }
    void writeData(test memory test, uint8[] memory test2)
    {
        test.test2["1"][0]=2;
    }
}

pragma solidity ^0.8.0;
contract NoTest8
