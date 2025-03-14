pragma solidity ^0.8.0;
contract C {
    uint private constant SIZEOF_COUNTER_FIELD = 5;
    uint public x;
    constructor(uint _x) public {
        x = _x;
    }
    function setX(uint _x) public {
        x = _x;
        assembly {
            let x := mload(0x40)
            mstore(0x40, add(x, 0x20))

            mstore(add(x, SIZEOF_COUNTER_FIELD * 32), _x)
            mstore(0x40, sub(x, 0x20))

            mstore(mload(0x40) + 0x20, x)
        }
    }
    function setCounter(uint _x) public {
        assembly {
            let x := mload(0x40)
            mstore(0x40, add(x, 0x20))
            mstore(mload(0x40) + 0x20, x)
            x := mload(0x40) + 0x20
            mstore(0x40, mul(x, 0x200))
            mstore(mload(0x40) + 0x20, x)
        }
    }
}
