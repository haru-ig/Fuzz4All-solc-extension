pragma solidity ^0.8.0;
contract storageMut{
    mapping(uint32 => uint32) immutable mapping_;
}

contract oldStorageAccess{
    uint constant a = a;
}

contract storageAccess{
    uint constant a = a;
    modifier onlyMod(){
        require(a > 0, "Not enough gas");
        _;
    }
    function f() public onlyMod returns(uint){
        require(a > 0, "Not enough gas");
        return a;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract testAbi{
    uint256 constant aSize = 0x31;
    uint8 constant aByteSize = 0x30;
    uint16 constant aWordSize = 0x32;
    uint64 constant aDoubleSize = 0x33;
    uint128 constant aQuadSize = 0x34;
    address constant aAddrSize = 0x35;


    mapping(uint8 => uint8) immutable mapBool;
    mapping(uint8 => uint8) immutable mapInt;
    mapping(uint8 => uint8) immutable mapuint;
    mapping(uint8 => uint8) immutable mapIntAddr;
    mapping(uint8 => uint8) immutable mapuintAddr;
    mapping(uint8 => uint8) immutable mapAddress;


    mapping(uint16 => uint16) immutable mapWord;



    mapping(address => uint8) internal mapAddressIntInt;
    mapping(address => uint8) internal mapAddressString;
    mapping(uint32 => uint32) internal mapSizeSize;


    mapping(uint8 => uint8) immutable mapByte;



}
contract AccessTest{
    address A;
    address B;
    Test test;
    function AccessTest(){
    }
    function setUp() public
    {
        A = 0x87460dCC1
