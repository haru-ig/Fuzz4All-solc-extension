pragma solidity ^0.8.0;
contract SemanticallyEquivalentAbiMutations_v20Check {
    uint160 public value;
    uint32 public value2;
    uint256 public value3;
    uint160 public value_v20;
    function equivalent() public view {
    }

    function reverted() public pure {
        revert;
    }
    function assert() public pure {
        assert(false);
    }

    function wrapping() public pure {
        value_v20 = uint160(value / value);
    }

    function modulo() public pure {
        value_v20 %= uint160(value / value);
    }
}
