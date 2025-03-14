pragma solidity ^0.8.0;
contract ExampleStruct1 {
    mapping(uint256 => address) mappingWithIndex;
    uint mappingWithIndex1;
    bytes1 mappingWithIndex2;
    ExampleStruct mappingWithIndex3;
    uint256[] arr;
    mapping[](uint256) arr1;
    mapping(uint256 => uint256) arr2;
    mapping (uint => address []) emptyMapping;
    mapping (uint256 => address) _emptyMapping;
    mapping (bytes1 => uint) _emptyMapping1;
    function getEmptyMapping() public view returns (mapping (bytes1 => uint)) {
        return _emptyMapping;
    }
    function getEmptyMapping1() public view returns (mapping (bytes1 => uint)) {
        return _emptyMapping1;
    }
    mapping (uint256 => address) _emptyMapping2;
    mapping (uint => uint256) _emptyMapping3;
    uint s1;
    mapping(uint256 => uint) s2;
    mapping(uint => int) s3;
    uint[] arr4;
    mapping(uint => uint) [] arr5;

    function emptyMapping() public view returns (mapping (uint => uint256)) {
        return _emptyMapping3;
    }
    function function11(ExampleStruct1 s, uint b) public {
        mappingWithIndex.insert(mappingWithIndex1, s.mappingWithIndex1);
        mappingWithIndex.insert(mappingWithIndex2, s.mappingWithIndex2);
        mappingWithIndex.insert(mappingWithIndex3, s.mappingWithIndex3);
        mappingWithIndex1 = mappingWithIndex1 + mappingWithIndex2 + b;
        mappingWithIndex.length(mappingWithIndex1);
        mappingWithIndex3.length(mappingWithIndex3);

        uint256[] memory arr4Memory = new uint8[](1)[];
        arr4Memory;
    }
    function f21(ExampleStruct1 s, uint b) public view {
        mapping(uint256 => bool) memory mapMemory;
        mapMemory;
        mapping(ExampleStruct => uint256) mappingWithIndex2;
        mappingWithIndex2;
        s.length(mappingWithIndex1);



    }
    function function12() public {
        mapping(uint256 => bool) memory s1;
        mapping(uint256 => bool) memory s2;
    }
    function f22(ExampleStruct1 s, uint b) public {
        mapping (uint256 => int) memory map;
        map;
        mapping (int => uint) mappingWithIndex2;
        mappingWithIndex2;
        mapping(bytes => uint) mappingWithIndex1;
        mappingWithIndex1;
        mapping(uint256 => uint256) mappingWithIndex3;
        mappingWithIndex3;
        s.length(mappingWithIndex2);
        s.getLength(mappingWithIndex1);
        s.array
