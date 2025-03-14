pragma solidity ^0.8.0;
contract Summation {
    function sumUpArray(uint256[] memory _array) pure public returns(uint256){
        require(_array.length > 0);
        uint256 _sum = 0;
        for(uint256 i = 0; i < _array.length; i++){
            _sum += _array[i];
        }
        return _sum;
    }
    function sumUpTwo(uint256 _num1, uint256 _num2) pure private returns(uint256){
        return _num1 + _num2;
    }
    function sumUpThree(uint256 _num1, uint256 _num2, uint256 _num3) pure private returns(uint256){
        return _num1 + _num2 + _num3;
    }
    function sumUpFour(uint256 _num1, uint256 _num2, uint256 _num3, uint256 _num4) pure private returns(uint256) {
        return _num1 + _num2 + _num3 + _num4;
    }
    function sumUp5(uint256 _num1, uint256 _num2, uint256 _num3, uint256 _num4, uint256 _num5) pure private returns(uint256) {
        return _num1 + _num2 + _num3 + _num4 + _num5;
    }
}
