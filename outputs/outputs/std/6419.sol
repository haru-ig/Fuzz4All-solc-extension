pragma solidity ^0.8.0;
contract Multiply {
struct MyInt {
    uint256 value;
}
contract Multiply {
function multiply(MyInt memory _x, MyInt memory _y) public pure returns (MyInt memory) {
    uint256 x_value = _x.value;
    uint256 y_value = _y.value;
    uint256 z_value = 0;
    for (uint256 i = x_value.length; i > 0; i--) {
        z_value = (z_value * 10) + uint256(x_value[i-1]);
    }
    if (y_value < 10 || 10 < y_value) throw;
    for (uint256 i = 1; i <= y_value-1; i++) {
      z_value = (z_value * 10) + uint256(y_value[y_value.length-i]);
    }
    return MyInt(z_value);
}
}


pragma solidity ^0.8.0;
contract Array {
    struct MyArr {
        uint256[] element;
        uint256 element_length;
        uint256 max_allowed_index;
    }
    function findMin(MyArr memory _array) private view returns(uint256) {
        if (_array.element_length < 1) throw;
        uint256 min = _array.element[0];
        for (uint256 i = 1; i < _array.element_length; i++) {
            if (_array.element[i] < min) {
                min = _array.element[i];
            }
        }
        return min;
    }
    function findMax(MyArr memory _array) private view returns(uint256) {
        if (_array.element_length < 1) throw;
        uint256 max = _array.element[0];
        for (uint256 i = 1; i < _array.element_length; i++) {
            if (_array.element[i] > max) {
                max = _array.element[i];
            }
        }
        return max
