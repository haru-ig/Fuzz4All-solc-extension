pragma solidity ^0.8.0;
contract Convert {
    mapping(string => mapping(int => bytes32)) public staticFunction;
    mapping(uint256 => uint) public staticVariable;
    mapping(string => uint) public staticFunctionWithInvalidReturn;
    mapping(uint256 => bytes32) public staticVariableWithInvalidReturn;
    mapping(uint => string) public staticReturnMapping;
    mapping(bytes32 => string) public staticReturnWithInvalidReturnMapping;

    int internal _bigInt_intMax;


    function bytes32For(uint8 _a) pure public returns (bytes32) {
        uint64 a = _a;


        return uint8(uint256(0xf57a973cb667f2fd2803d8d32fd92a40b96f252b) * 0xf57a973cb667f2fd2803d8d32fd92a40b96f252b) % 0x00ff00ff00ff00ff;
    }



    bytes32 private _newBytes32;
    uint private _newValue;


    function convertBytes32ToInt256() public pure returns (int256) {
        (bool isCorrect1, ) = bytes32ToUint256(_newBytes32);
        (bool isCorrect2, ) = bytes32ToUint256(_newBytes32);
