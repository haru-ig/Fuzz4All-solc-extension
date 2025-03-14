pragma solidity ^0.8.0;
contract MutatingReturnsArrays2 is MutatingReturnsArrays {
    uint256[] public _uint256WithNullPointer2;
    mapping(uint256 => uint256) public _uint256ArraysWithNullPointer2ForReason;
    function add255AndReturnUint256Array2() public pure returns (uint256[] memory) {
        return new uint256[](5);
    }
    function subtract256AndReturnUint256Array2() public pure returns (uint256[] memory) {
        _uint256WithNullPointer2.push(255);
        _uint256ArraysWithNullPointer2.push(256);
        _uint256WithNullPointer2 = new uint256[](_uint256WithNullPointer2.length + 1);
        _uint256ArraysWithNullPointer2 = new uint256[(uint256WithNullPointer2.length + 1)];
        uint256 _uint256ArrayWithNullPointerLength = _uint256ArraysWithNullPointer2.length;
        _uint256WithNullPointer2[0] = 255;
        return _uint256ArraysWithNullPointer2;
    }
    function add255AndReturnUint256ArrayWithoutNullPointer() public pure returns (uint256) {
        return 255;
    }
    function subtract256AndReturnUint256ArrayWithoutNullPointer() public pure returns (uint256) {
        return 256;
    }
    event SetReturnArraysWithoutNullPointer(uint256[5] _uint256ArraysWithNullPointer);
    event SetReturnArraysWithoutNullPointerForReason(uint256 _uint
