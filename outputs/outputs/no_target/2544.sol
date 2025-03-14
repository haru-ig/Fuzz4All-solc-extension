pragma solidity ^0.8.0;


contract deprecated_contract_version {

    constructor(uint x) {
        x = 777;
    }

    function a() public {

        assembly {

            let a := 0
            a := a + mload(0x40)
            mstore(0x40, a)

            let b := bla
        }
    }

    struct bla_struct { int foo; string bar;}
