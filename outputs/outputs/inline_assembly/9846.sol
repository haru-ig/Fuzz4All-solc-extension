pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContractInAStateMachines {
    constructor () {
    }
    function g() public {
        uint x;
        uint y;
        uint z;
        address xxxx;
        assembly {
            x := 0
            y := 0
            z := 0
            xxxx := 0x80808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080
            xxxx := and(xxxxx, 2**256 - 1)
        }
        c(3, 3);
    }
    function c(uint _x, uint _y) public pure {
    }
}
