pragma solidity ^0.8.0;
contract Mutant3FallbackFunction {
    uint private a;
    constructor() public {
        a = 2 ** 20;
    }
    function mutantSetFallbackFunction() public pure returns (uint) {
        return a;
    }
}
contract Mutant4ReceiveWithFallbackFunction {

    function mutantSetReceiveFunction(uint a) public returns (uint) {
        uint b;
        assembly {
            b := add(a, 1)
        }
        return b;
    }

}
contract Mutant4FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint x;
        {
            x := block.difficulty
        }

        assembly {

            sstore(0xa0, x)
        }

        return x;
    }
}
contract Mutant4FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint x;
        {
            x := block.timestamp
        }

        assembly {

            sstore(0xa1, x)
        }

        return x;
    }
}
