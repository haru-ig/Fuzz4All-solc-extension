pragma solidity ^0.8.0;
contract Array {
    mapping(uint => uint) public valueMap;
    mapping (uint => uint) public mapOfValue1;
    mapping (uint => uint) public mapOfValue2;
    mapping(uint => uint) public map;
    mapping (uint => uint) public valueList1;
    mapping (uint => uint) public valueList2;
    mapping (uint => uint) public valueList;
    mapping (uint => uint) public valueList3;
    mapping (uint => uint) public valueList4;
    mapping (uint => uint) public valueList5;
}

pragma solidity ^0.8.0;
contract Array {
    mapping (uint => uint) public map;
    uint[] externalArray;

    function newArray() public {
        externalArray = new uint[](20);

        for (uint index = 0; index < 20; ++index)
        {
            externalArray[index] = index;
        }
    }

}
