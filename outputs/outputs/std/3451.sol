pragma solidity ^0.8.0;
contract Array {
uint256[] storage values1;
constructor() { values1 = [0]; }
uint256 function sum() public view returns (uint) {
    uint256 result = values1[0];
    for (uint i=1; i< values1.length; i++) result += values1[i];
    return result;
}
uint256 function product() public view returns (uint) {
    uint256 result = values1[0];
    for (uint i=1; i< values1.length; i++) result *= values1[i];
    return result;
}
address[] storage addresses1;
constructor() { addresses1 = [0]; }
address function add(address a) public view returns (address) {

    uint256[] memory a_;
    if (0 == values1.length || address(values1[values1.length-1])!= a_) {
        a_.length = 1;
        a_ = new uint256[](1);
        a_[0] = a_;
        values1 = a_;
    }
    uint256[] storage _a = values1;
    uint256 _length = _a.length;
    uint256 _i = _length.sub(1);
    while (_i >= 0) {
        uint256 current_value = _a[_i];
        if(current_value == 0) {
            _a[_i] = a;
            return (address) a;
        }
        _a[_i] = current_value.add(a);
        _i -= 1;
    }
    uint256[] memory _a_ = new uint256[](_a.length.add(1));
    _a_[_length] = a;
    _a_.length = _length.add(1);
    values1 = _a_;
    return (address) a;
}
address[] storage addresses1_ = values1;
uint256[] storage values2 = new uint256[](2);
uint256 values2_[1];
constructor() { values2_[0] = 0; }
address function returnAddress() public view returns (address) {
    if (0 == values2.length) {
        values2.length = 1;
        values2 = new uint256[](1);
    }
    uint256 _length = values2.length;
    uint256 _i = _length.sub(1);
    while (_i >= 0) {
         uint256 current_value = values2_[_i];
         if(current_value == 0) {
            values2_[_i] = address(0);
            return (address) 0;
         }
         values2_[_i] = current_value.add(address(0));
         _i -= 1;
     }
     uint256[] memory _values2 = new uint256[](_length.add(1));
     _values2[_length] = address(0);
     values2.length = _length.
