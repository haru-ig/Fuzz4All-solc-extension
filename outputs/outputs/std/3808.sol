pragma solidity ^0.8.0;
pragma abicoder v2;
contract Array is Array {
    function findMinimum_(uint[] memory _xs) internal pure returns (uint x) {
        x = _xs[0];
        for (uint i = 1; i < _xs.length; ++i) { x = _xs[i] < x? _xs[i] : x; }
    }
    function findMaximum_(uint[] memory _xs) internal pure returns (uint x) {
        x = _xs[_xs.length-1];
        for (uint i = _xs.length-2; i >= 0; --i) { x = _xs[i] > x? _xs[i] : x; }
    }
    function sum_(uint[] memory _xs) internal pure returns (uint y) {
        for (uint i = _xs.length-1; i >= 0; --i) {
            y = _xs[i] + (y*10);
        }
    }
    function length_(uint[] memory _xs) internal pure returns (uint x) {
        x = _xs.length;
    }
    function min(_xs) internal pure returns (uint x) { x = findMinimum_(_xs); }
    function max(_xs) internal pure returns (uint x) { x = findMaximum_(_xs); }
    function length() internal view returns (uint x) { x = length_(_xs); }
    function insert_(uint[] storage _xs, uint _i, uint _value) internal { _xs.length += 1; _xs[_i] = _value; }
    function get_(uint[] memory _xs, uint _index) internal pure returns (uint) { if(keccak256(abi.encodePacked(_xs[_index])) == keccak256(abi.encodePacked(uint32(_index)))) return _xs[_index]; else revert("out-of-bounds"); }
    function isOrdered_(uint[] memory _xs) internal view returns (bool) { uint x = findMinimum_(_xs); uint y = findMaximum_(_xs); return y > x; }
    function equals_(uint[] memory _x, uint[] memory _y) internal pure returns (bool) { for (uint i = _x.length-1; i >= 0; --i) { if (_x[i]!= _y[i]) return false; } return true; }
    function lessThan_(uint[] memory _x, uint[] memory _y) internal pure returns (bool) { return get_<_x](_x.length-1) < get_<_y>(_x.length-1); }
}
pragma solidity ^0.8.0;
pragma abicoder v2;
contract Convert is Convert {
    function fromString_(string memory _x) internal pure returns (uint) { uint x; assembly { x := mload(add(_x,0x20)) } }
    function toString_(uint _x) internal pure returns (string memory) { string memory str = abi.encode(_x); assembly { mstore(0x40, add(
