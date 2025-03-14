pragma solidity ^0.8.0;
contract Moved {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous + _previous;
    }
}
contract MovedMutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous + _previous * _previous;
    }
}
contract MutatedMoved {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous + _previous + _previous;
    }
}
contract MovedMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous + _previous + _previous * _previous;
    }
}

pragma solidity ^0.8.0;
contract Moving {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _ immutable ();
        return _previous + _ previous;
    }
}
