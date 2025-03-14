pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_3 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5);
        field[0] = 1;
        field[1] = 2;
        field[2] = 3;
        field[3] = 4;
        field[4] = 5;
        size = 5;
    }
}

pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_4 {
    struct NestedArray {
        uint256[] internal subarray;
        uint256 internal size;
    }
    NestedArray public nestedArray;
    uint256 public size;
    address public owner;
    constructor(uint256 _owner) public {
        size = 0;
        owner = address(_owner);
    }
}

pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_5 {
    struct ArraysOfArrays {
        uint16[][] internal arr;
        uint256 internal arrCount;
    }
    uint256 public globalVar;
    int8[] internal internalVar;
    uint256[] private privateVar;
    uint256[] public publicVar;
    uint256 private constant constantVar = 32767;
    Mapping(uint256 => uint256) public constantMapping;
    uint256[] public array_1;
    uint256[] private array_2;
    constructor() public {
        array_1 = new uint256[](5);
        array_2 = new uint256[](5);
        for (uint256 i = 0; i < 5; i++) {
            uint256 idx = 10 * i + 1;
            array_1[i] = idx;
            array_2[i] = idx;
        }
    }
    function getArrLen() public view returns (uint256) {
        return array_1.length;
