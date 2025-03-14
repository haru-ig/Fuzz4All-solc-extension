pragma solidity ^0.8.0;
contract B {
    uint public x;
    uint public z;
    uint xmul100;
    uint ymul10;

    uint zplus20 = z + z;
    constructor(uint _z) public {
        z = _z;
    }

    uint public y;
    uint public _x;

    function addMul() public {

    x = 0;
    z = 0;
    for (uint i=0; i<6; i++) {
            x += _x;
            z += _x;
            _x = 0x1000000000000000000000000000000000000000000000000000000000000002
            y += _x;
        }
    }

    function subtractMul() public {


    x = 0;
    z = 0;
    for (uint i=0; i<6; i++) {
            x += _x;
            z += _x;
            _x = 0x100000000000000000000000000000000000000000000000000000000000000002
            y += _x;
        }
    }

    function sub() public {
