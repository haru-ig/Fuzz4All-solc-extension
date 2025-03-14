pragma solidity ^0.8.0;
contract Mutability {
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable(new Immutable(10u));
        return _previous;
    }
    function _immutable(uint a) internal pure returns (uint) {
        return a + 20;
    }
}

contract Revert {
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;


    }
    function _immutable() internal pure returns (uint) {
        return 100;
    }
}

contract Ok {
    function balance() public view returns (uint) {
        uint immutable a = 200;
        uint immutable b = _immutable(100);


        return a;
    }
    function _immutable() internal pure returns (uint new) {
        return new + 0;
    }
}
