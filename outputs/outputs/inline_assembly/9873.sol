pragma solidity ^0.8.0;
interface Solidityxul {

}
contract SemanticsMismatchxulMutant2 {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        Solidityxul a;
        assembly {
            x := "x"
            y := "y"
        }
        c();
    }
    function c() public pure {
    }
}
