pragma solidity ^0.8.0;
contract mutant {
    bytes32 internal _previousGeneration;
    bytes32 internal _mutated;

    constructor() public {
        _previousGeneration = new bytes32[](0);
    }
}
contract mutant_2 is mutant {
    constructor() public {
        _previousGeneration;
        _mutated;
        bytes32(1);

        log0(1);
        log1(1);
        log2(1);
        log3(1);
        log4(1);
    }
}

contract test {
    mutant_2 m;
    function test() public {
        m._previousGeneration;
        m._previousGeneration.join("");
        m._mutated;
        new mutant_2;
    }
}
