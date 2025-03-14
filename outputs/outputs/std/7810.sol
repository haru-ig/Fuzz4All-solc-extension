pragma solidity ^0.8.0;
contract Convert {
    function unsignedInt(uint _number) public pure returns (uint) {
        if(_number == 0) {
            return 0;
        }
        else if(_number < 0){
            return uint(-1) - (uint(-1) + _number);
        }
        else {
            return uint(1) + _number;
        }
    }
    function signedInt(int _number) public pure returns (uint){
        if(_number < int(0xFFFFFFFF)){
            return uint(_number);
        }
        else {
            return uint(1) + uint(_number);
        }
    }
    mapping (uint => uint) public unsignedMapping;
    mapping (uint => uint) public signedMapping;
    mapping (uint => uint) public arrayMapping;
    mapping (uint => bool) public
