pragma solidity ^0.8.0;
contract Mutator {
    struct MyNestedStruct {
        uint256 myNumber;
    }
    function mutatorTest() public {
        uint256 num = 0;
        uint256[] memory nestedArray = new uint256[](10);
        nestedArray[num++] = 25;
        nestedArray[num++] = 50;
        nestedArray[num++] = 500;
        nestedArray[num++] = 1000;
        nestedArray[num++] = 1500;
        nestedArray[num++] = 2000;
        nestedArray[0] = 3000;
        MyNestedStruct memory s;
        s.myNumber = 100;
    }
}
