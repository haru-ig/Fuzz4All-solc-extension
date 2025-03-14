pragma solidity ^0.8.0;
contract Semantic0010 {
    address public _address1;
    uint _number1;
    uint[3] _array1;
    mapping(uint => uint8) _mapping1;

    function useDeclaration() public {
        uint256 _number31 = uint256(uint256(_number1));
    }

    function returnMultiple() public returns (uint[3]) {
        return [_number1, _number1 + 1, _number1 + 2];
    }

    function returnMultiple1() public returns (uint, uint[3]) {
        return (_number1, [_number1, _number1 + 1, _number1 + 2]);
    }

    function returnZero() public returns(uint32) {
        return 0;
    }

    function returnUint256() public returns (uint256) {
        return uint256(_number1);
    }

    function returnMultipleUint256() public returns (uint, uint256, uint256) {
        return (uint256(_number1), uint256(_number2), uint256(_number2 + 2));
    }

    function returnMultipleArray32() returns (uint[3], uint[3], uint[2]) {
        return (_array1[0], _array1[1], _array32[2]);
    }

    function returnsZero() returns(uint) {
        return 0;
    }

    function returnsOne() returns(uint) {
        return 1;
    }

    function returnsNegativeUint() returns(int) {
        return -1;
    }

    function returnsPositiveUint() returns(uint) {
        return 200;
    }

    function returnsOneUint() returns(uint16) {
        return 1;
    }

    function notFunction() {
    }

    function notFunction(uint160 _value) {
    }

    function notFunction(uint _value) {
    }

    function notFunction(int _value) {
    }

    function notFunction(bytes calldata _value) {
    }

    function notFunction(bool _value) {
    }

    function notFunction(bytes32 _value) {
    }
}
