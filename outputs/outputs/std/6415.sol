pragma solidity ^0.8.0;
contract Array {
contract Math{
    function min(uint256 _a,uint256 _b) pure internal returns(uint256) {
        return _a < _b? _a : _b;
    }
    function max(uint256 _a,uint256 _b) pure internal returns(uint256) {
        return _a > _b? _a : _b;
    }
    function sum(uint256[16] memory _array) pure internal returns(uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < 16; i++){
        sum += _array[i];
        }
        return sum;
    }
}
contract Memory{
    function get_address(uint256[] memory _memory) internal pure returns(address) {
        uint256 _first = 0;
        int256 _last = _memory.length-1;
        while (_last >= 0){
            uint256 elem = _memory[_last];
            if (elem!= _first && elem!= 0) {
                return address(0);
            }
            _last--;
            _first++;
        }
        return address(0);
    }
}
contract Multiprecision {
    function sum(uint256[_] memory _array) pure internal returns(uint256) {
        return sumInt(_array,_array.length);
    }
    function sumInt(uint256[16]) internal pure returns(uint256) {
        return sumUint(uint256(_a)+uint256(_b),uint8(_a)+uint8(_b));
    }
    function sumUint(uint256[_]) internal pure returns(uint256) {
        uint256 sum_low = 0;
        uint256 sum_high = 0;
        for (uint256 i = 0; i < uint256(_size); i++) {
            uint256 sum_val = uint256(_array[i]) + sum_low * uint256(_array[i]);
            sum_low = sum_val * 256 / 2**(8*(uint256(_size)+uint256(i)));
            uint256 high
