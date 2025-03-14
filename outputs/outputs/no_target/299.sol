pragma solidity ^0.8.0;
contract Immutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous - _previous;
    }
}
contract Mutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous + _immutable();
    }
}
contract MutatedImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous * _previous + _previous;
    }
}
contract ImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous * _previous + _previous + _previous;
    }
}
contract MutatedImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        return _previous * _previous + _previous + _previous * _previous;
    }
}



pragma solidity ^0.8.0;
contract Immutable {
