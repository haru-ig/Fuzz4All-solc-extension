pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    bool x;
    contract Derived1 inherit Escrow {
        bytes32 x;
        bytes32 y;
        bytes32 z;

        mapping(bytes32 => bool) public mappingBool;
        constructor () {
            x := z == x;
        }
        function g() public view returns (bytes32 z_) {
            y := "x"
            z_ := "y"
        }
        function c() public view returns (bool z_) {
            x := z == false;
            y := "y"
            z_ := x;
        }
    }
    function f() public pure {
    }
}
