pragma solidity ^0.8.0;
contract Array {
    uint mappingOfArrayToSixElements_current;
    uint mappingOfArrayToAddress_current;
    uint int256MappingOfArrayToInt256s_current;
    uint maxUint_current;
    uint maxBytes_current;
    uint maxBytes32_current;
    uint maxAddress_current;
    mapping (uint => bool) _arrayHasSixElements_current;
    address owner_current;
    modifier arrayHasSixElements() {return (address(this).balance >= 0.05 ether); }
    uint[] private arrayOfUints;
    bytes[] private arrayOfBytes;
    mapping (uint => uint) private mappingOfArrayToUint;
    mapping (uint => uint) private mappingOfUintToArray;
    mapping (uint => uint[]) private mappingOfArrayToUints;
    mapping (uint => bytes[]) private mappingOfArrayToBytes;
    mapping (uint => bytes32[]) private mappingOfArrayToBytes32;
    mapping (uint => address[]) private mappingOfArrayToAddresses;
    mapping (uint => int256[]) private mappingOfArrayToInt256s;
    mapping (uint => uint256[]) private mappingOfUintToUint256;
    constructor(uint maxBytes_) {
        _maxBytes = maxBytes_;
        uint bytes_;
        bytes_;
    }
    function test(uint n) arrayHasSixElements () {
        assert((mappingOfArrayToUint[n].toUint()) > mappingOfArrayToUint[n][mappingOfArrayToUint[n]].toUint());
        mappingOfArrayToUint[n][mappingOfArrayToUint[n]].toUint();
        uint bytes_;
        bytes_;
        mappingOfArrayToUint[n].toUint();
        mappingOfUintToArray[mappingOfArrayToUint[n]][mappingOfArrayToUint[n]].toUint();
    }
    function test(uint n) {
        uint[] f;
        uint32[] v;
        bytes[] b;
        bytes32[] d;
        address[] a;
        uint256[] s;
    }
}

pragma solidity ^0.8.0;
contract Math {
    bool private constant TRUE = true;
    bool private constant FALSE = false;
    uint256 internal constant UNLIMITED_MEMORY = uint256(2**256);
    uint256 public overflow;
    uint256 public underflow;
    uint256 public minInt;
    uint256 public maxInt;
    uint256 internal constant MIN_INT_INTERNAL = uint256(-2**127);
