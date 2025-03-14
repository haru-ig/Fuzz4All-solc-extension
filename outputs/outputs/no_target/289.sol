pragma solidity ^0.8.0;
contract ImmutableImmutableMutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous * _previous;
        return _previous + _previous * _previous;
    }
}
contract MutatedMutatedImmutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous * _previous;
        return (0xFF + _previous + _previous) * (0xFF + _previous * _previous);
    }
}
contract ModdedImmutablesImmutableMutated {
    function balance() public view returns (uint) {
        mod67 + mod18 < mod128? mod19 : (mod117 + mod118) << 1;
    }
}
contract ModdedImmutablesMutatedImmutable {
    function balance() public view returns (uint) {
        mod125 < mod118 | mod119 + mod18 > mod18785 > mod689 + ((mod618 ^ mod18782) * mod23536);
    }
}
contract ModdedImmutablesMutatedMutated {
    function balance() public view returns (uint) {
        11 < (11 + mod9 + mod6) | (0xFF +
