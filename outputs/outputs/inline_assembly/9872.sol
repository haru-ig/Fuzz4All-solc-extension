pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;

        emit c_b();

        emit c_b();

        emit c_b();




        emit c_b();
    }
    function c_b() public pure {
    }
}
