pragma solidity ^0.8.0;
contract Immutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous;
        _previous;
        return _previous;
    }
}
contract Mutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;
        return _previous;
    }
}
contract Invariant {
    int public _i;
    int public result;
    function _invoke(int _x, int _y) internal view returns (int) {
        _i += _y;
        result += _x * _y;
        return _x * _y;
    }
}
contract MutatedInvariant {
    int public _i;
    int public result;
    function _invoke(int _x, int _y) internal view returns (int) {
        _i += _y;
        result += _x * _y;
        int temp = _x * _y;
        temp;
        return temp;
    }
}
contract ImmutableInvariant {
    int public _i;
    int public result;
    function _invoke(int _x, int _y) internal view returns (int) {
        _i += _y;
        result += _x * _y;
        int temp = _x * _y;
        temp;
        return temp;
    }
}
contract
