pragma solidity ^0.8.0;





contract ArrayAccessApp1 {
    function pushUint42(uint[] memory _array, uint _index, uint256 _value) internal {
        _array[_index] = _value;
    }
}
