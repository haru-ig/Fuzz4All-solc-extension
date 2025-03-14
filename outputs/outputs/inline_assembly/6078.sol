pragma solidity ^0.8.0;
struct Mutator {
    uint256 x;
    constructor(uint256 _x) {
        x = _x;
    }
    function modifyInternalState() internal {
        x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample {
    function main() public pure {
        Mutator memory m;
        m.modifyInternalState();
        m.modifyInternalState();
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample1 {
    function main() public pure {
        Mutator memory m;
        m.modifyInternalState();
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample2 {
    function main() public pure {
        Mutator memory m;
        m.modifyInternalState();
    }
}
