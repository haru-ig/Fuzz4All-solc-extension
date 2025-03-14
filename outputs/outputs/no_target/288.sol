pragma solidity ^0.8.0;


import "Immutable.sol";

contract Mutated is Immutable, Mutated {
    function _mutated() internal pure returns (uint) {
        return 20;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + 2 + _previous;
        _previous ^ _previous;
        return _previous * _previous;
    }
}

pragma solidity ^0.8.0;

import "Mutated.sol";

contract ImmutableMutated is Immutable, ImmutableMutated {
    function _mutated() internal pure returns (uint) {
        return 20;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + 2 + _previous;
        _previous ^ _previous;
        return _previous + _previous * _previous;
    }
}
pragma solidity ^0.8.0;

import "Mutated.sol";

contract MutatedImmutable is Immutable, MutatedImmutable {
    function _mutated() internal pure returns (uint) {
        return 20;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + 2 + _previous + 2 + 2;
        _previous ^ _previous;
        return _previous * _previous + 2 * 2;
    }
}
