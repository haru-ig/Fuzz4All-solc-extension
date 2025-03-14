pragma solidity ^0.8.0;
contract Test9Xx {
bool _isStatic;
    function f_() public view {
        _isStatic = _isStatic;
        if (_isStatic) {
            _isStatic = false;
            f_();
        }
    }
}
