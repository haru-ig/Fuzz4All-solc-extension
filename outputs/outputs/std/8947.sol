pragma solidity ^0.8.0;
contract ExampleStruct11 {
    ExampleStruct11 x = ExampleStruct11(1);
    uint256 x_;
    constructor(uint256 x_) {
        x_ = x_;
    }
    function setLength(ExampleStruct11 s, uint256 _length) public {
        x_ = _length;
    }
    function getLength(ExampleStruct11 s) public view returns (uint256) {
        return x_;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct12 {
    uint256 x;
    constructor(uint256 x_) {
        x = x_;
    }
    function getLength(ExampleStruct12 s) public view returns (uint256) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct12 {
    ExampleStruct12[] public _myArray;
    uint256 x;
    constructor(uint256 x_) {
        x = x_;
    }
    function getLength(ExampleStruct12 s) public view returns (uint256) {
        return x;
    }
    function setLength(ExampleStruct12 s, uint256 _length) public {
        uint256 oldLength = s.getLength(s);
        if (_length > oldLength) for (uint256 i = oldLength; i < _length; i++) s.set(s, i, ExampleStruct12(x));
        else if (_length < oldLength) for (uint256 i = oldLength; i > _length; i--){ ExampleStruct12 x_;  for (uint256 j = i; j < oldLength; j++) (x_, x) = (s.get(s, j), s.get(s, j-1)); s.set(s, i, x_); }
        else x = _length;
    }
    function get(ExampleStruct12 s, uint256 count) public view returns (ExampleStruct12,ExampleStruct12) {
        ExampleStruct12 x_; x_ = s.get(s, count-1); return (x, x_);
    }
    function set(ExampleStruct12 s, uint256 count, ExampleStruct12 c) public {
        ExampleStruct12 x_; x_ = s.get(s, count-1); s.set(s, count, x);
    }
    function push(ExampleStruct12[] storage dest, ExampleStruct12[] memory src) public {
        for (uint256 i = 0; i < src.length; i++) s.setLength(dest[i], i < dest.length? dest.length - i : src.length + i);
    }
    function pop(ExampleStruct12[] storage dest)
