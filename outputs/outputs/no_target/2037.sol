pragma solidity ^0.8.0;
contract Modification2{
    int256 public a;
    string public b;
    constructor(int256 _a, string memory _b){
        a = _a;
        b = _b;
    }
}
contract Modification3{
    bytes32 public a;
    bytes32 public b;
    constructor(bytes32 _a, bytes32 _b){
        a = _a;
        b = _b;
    }
}
