pragma solidity ^0.8.0;
contract Test43_InvolvingStorageChange {
    uint public num = 0;
    bytes32 public name;
    constructor() public {
        name = "Test contract for the dynamic array issue with a storage change";
    }
    function test() public {
        num++;
        name = "Test 1";
    }
}

pragma solidity ^0.8.0;
contract Test44_Indexing {
    bool public bool;
    bool[] public booleans;
    uint[] public uints;
    bytes32[] public bytes32s;
    uint[9] public int64s;
    bytes32[4] public bytes32ss;
    mapping(uint => bool) bool;
    mapping(uint => bytes32) bytes32s;
    mapping(uint => uint) uint;
    mapping(uint => uint[]) uintArray;
    mapping(uint => bool[]) boolArray;
    uint public nonzeroIndex;
    uint public nonzeroIndex2;
    uint public nonzeroIndex3;
    uint public nonzeroIndex4;
    uint public nonzeroIndex5;
    uint[] public nonzeroIndices;
    uint[] public nonzeroIndices2;
    uint[] public nonzeroIndices3;
    uint[] public nonzeroIndices4;
    uint[] public nonzeroIndices5;
    constructor () public {
        booleans.push(true);
        booleans.push(true);
        bools[7] = true;
        uints.push(1000);
        uints.push(10000);
        uints.push(10_000_000);
        bytes32s.push(bytes32("hello"));
        bytes32s.push(bytes32(0x4440400000000000000000000ffffffff000000000000000000000000000000000001));
        bytes32s[9] = bytes32(0x555050000000000000000000000000000000000000000000000000000000000000000000000000000001
