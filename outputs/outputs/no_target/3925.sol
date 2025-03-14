pragma solidity ^0.8.0;
 contract C {
    uint public x;
    constructor (uint _x) public {
         x = 2147483647;
    }
}
contract C {
    function f() public pure {
        assembly {
            let size := 32


            return(size - 32)
        }
    }

    function g() public pure {
        assembly {
            let size := 32


            return(size)
        }
    }
}
contract C {
    uint8[] public values;
    uint8[] public values2;

    constructor () public {
        values = 32767;
        values2 = 32768;
    }
}
contract C {
    function f() public pure {
        assembly {
            let size := 32


            return(size + 32)
        }
    }

    function g() public pure {
        assembly {
            let size := 32


            revert();
        }
    }
}
contract C {
    constructor () public {
        bytes32 x;
        uint x2;

        assembly {
            x := mload(0x40)
            x2 := mload(0x41)
        }

        x = 21;
        x2 = 22;
    }
}
contract C {
    function f() public pure {
        assembly {
            let size := 32

            mstore8(0x40, size - 2)
            mstore64(0x41, 32**64 + 3)
        }
    }

    function g() public pure {
        uint8 x = 32768;
        uint8 x2 = -32769;

        assembly {
            /* If address[size-2] does not equal 2**64 - 2, then the address 32**63 - 3 underflows and the return value is changed to the value 32**63 -
