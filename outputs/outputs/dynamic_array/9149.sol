pragma solidity ^0.8.0;
contract Test {
    address payable public owner;
    uint256 public num = 0;
    address[] public admins;
    IErc20 public tokenAddress;
    bytes32 public arrayVar;
    address[] public dynArrayAddresses;
    bytes32 public dynStrArray;
    uint32[] public dynArr;
    uint[] public dynStrs;
    uint256[] public dynInts;
    uint32[2][2] public dyn2DInts;

    uint256[2] public arrayNoArr;
    mapping(uint256 => uint256) public map1;
    mapping(address => address) public map2;
    mapping(uint256 => uint256) memMap;
    mapping(address => mapping(uint256 => uint256)) public map3;
    mapping(bytes32 => address) public dataMap;
    mapping(address => address) public map4;
    mapping(address => address) public map5;

    address[] public dynArray;
    uint256[] public dynArr256;
    uint256[] dynStrs256;
    uint256[12] public dynArr64;
    bytes32[][] public dynArr2B32;
    address[][] dynArrayStr;
    uint256[][] dynArr256Strs;

    uint256 varArray;
    bytes32 varArray256;
    uint8 varInt8;
    uint16 varInt16;
    uint32 varInt32;
    uint64 varInt64;
}
