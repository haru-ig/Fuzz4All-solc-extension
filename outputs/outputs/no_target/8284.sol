pragma solidity ^0.8.0;
contract Zero6  {
    uint256 public  _uintVar = 0;
    bool public _uintVarInit = true;
    string public _stringVar;
    uint8 public _uByteVarForTwoSig;
    uint8 public _uByteVarForTwoSigInit;
    uint16 public _uint16VarForTwoSig;
    uint16 public _uint16VarForTwoSigInit;
    uint256 public _uint256Var;
    uint256 public _uint256VarInit;
    uint32 public _uint32Var;
    uint32 public _uint32VarInit;
    uint64 public _uint64Var;
    uint64 public _uint64VarInit;
    int256 public _int256Var;
    int256 public _int256VarInit;
    int128 public _int128Var;
    int128 public _int128VarInit;
    address public _addressVar;
    address payable public _addressVarAddress;
    address[] public _addressVarForAddress;
    address[10] public _addressesArrayVar;
    string public _textVar;
    address public _addressWithBytes;
    address payable public _addressWithBytesAddress;
    uint public valueUintZero6;
    uint8 public valueByteZero6;
    bytes2 public valueBytesTwoZero6;
    bytes3 public valueBytesThreeZero6;
    bytes4 public valueBytesFourZero6;
    bytes5 public valueBytesFiveZero6;
    uint64 public _uintForArray;
    bool public _boolVar;


    constructor(uint valueUintArg) public {
        _uintVarInit = true;
        _uintVar = valueUintArg;
