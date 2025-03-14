pragma solidity ^0.8.0;
contract Changed {
    function _changed(uint _x) private {
    }
    function balance() public view returns (uint) {
        _changed(_x);
        return _x;
    }
}
contract NewMutated {
    function _newMutated() private {
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _newMutated();
        return _previousValue + _previousValue;
    }
}
