pragma solidity ^0.8.0;
contract NotImmutable is Immutable {
    function _immutable() internal pure returns (uint) {
        return 20;
    }
    uint public nonmutable;
    function balance() public view returns (uint) {
        (nonmutable, _previous) + _immutable();
        return _previous;
    }
}

pragma solidity ^0.8.0;
contract ImmutableNotNonimmutable is Immutable, NotImmutable {
    uint _immutable = 10;
    uint public nonmutable;
    function balance() public view returns (uint) {
        (nonmutable, _previous) + _immutable;
        return _previous;
    }
}
