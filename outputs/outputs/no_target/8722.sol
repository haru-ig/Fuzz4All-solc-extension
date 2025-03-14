pragma solidity ^0.8.0;
library Library {
    struct A {
        bool b;
    }
    function f() public pure {
        A memory ma;
        ma.b = true;
    }
    function g() public pure {
        return A{b: true};
    }
}
contract EquivalentABIv08WithoutAbiV01Mutated {
    function f() public pure {
        Library.A memory ma;
        ma.b = true;
    }
    function g() public pure {
        return Library.A{b: true};
    }
}
contract EquivalentABIv08WithAbiV01AndMutated {
    uint256[2] internal state;
    constructor(uint256[] memory _inputArray) public {
        state = _inputArray[0:2];
    }
    function f() public pure returns (uint256) {
        uint256 j = state[0];
        state = _inputArray[2:3];
        return j;
    }
}
