pragma solidity ^0.8.0;
contract ArrayAccessApp2 {
    function getElement(address[] memory _array, uint _index) internal view returns (address element) {
        uint[] storage i = _array.i;
        element = i[1];
    }
}

pragma solidity ^0.8.0;
contract ArrayAccessApp3 {
    function getElement(address[] memory _array, uint _first, uint _last) internal view returns (address element) {
        address[2] storage i = _array.i;
        if (_first >= _last) {
            emit InvalidRange(_first, _last);
            return address(0);
        }
        element = i[_last];
    }
}
