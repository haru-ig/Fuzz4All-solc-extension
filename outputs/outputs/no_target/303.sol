pragma solidity ^0.8.0;
contract Mutator {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
}
contract ModMutator {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous * _previous;
    }
}
contract ModImmutableMutator {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous + _previous;
    }
}
contract ModMutatedImmuta {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        function f()
        {
            _previous + _immutable();
            _previous;
        }
        f();
    }
}
contract ModMutatedImmuta2 {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;


       function f()
