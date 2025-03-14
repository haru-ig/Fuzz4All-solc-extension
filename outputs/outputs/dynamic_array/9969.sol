pragma solidity ^0.8.0;
contract SemanticTest4 {
    uint index;
    constructor (uint initial) public {
        index = initial;
    }
    function incrementIndex() public {
        index -= 10;
    }
}
contract SemanticTest2 {
	uint[42] public testArray;
	uint[35] public testArray2;
    bool public boolean1 = false;
    bool public boolean2 = false;
    bool public boolean3 = false;
    bool public boolean4 = false;
    bool public boolean5 = false;
	uint[6] public uint_array5;
	uint public uint_array6;
    mapping (uint => uint) public map1_;
    mapping (uint => uint) public map2_;
    mapping (uint => uint) public map3_;
	uint public uint34;
	uint public uint35;
	uint public uint36;
    uint[38] public testArray3;
	uint[42] public testArray4;
	mapping (uint => uint) public map4_;
    uint public uint8;
    bytes public testArray5;
	uint public uint9;
    uint[] public int_array2;
	uint public uint20;
	uint public uint21;
    bytes[] public array11_;
	uint[] public testArray7;
    uint[38] public testArray8;
    uint public uint41;
    uint public uint42;
    uint32 public uint43;
    uint256 public uint44;
    uint8 public uint52;
    uint16 public uint53;
    uint80 public uint54;
    uint160 public uint55;
    uint192 public uint56;
    uint256 public uint57;
    uint168 public uint58;
    uint264 public uint59;
    uint64 public uint60;
    uint128 public uint61;
    uint131072 public uint62;
    uint131080 public uint63;
    uint131088 public uint64;
    uint2028467168 public uint65;
    uint2028467169 public uint66;
    uint2028467170 public uint67;
    uint2028467171 public uint68;
	uint131072 public uint69;
