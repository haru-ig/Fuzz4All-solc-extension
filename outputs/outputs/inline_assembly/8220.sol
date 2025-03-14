pragma solidity ^0.8.0;
contract Mutated5 {
    uint256 constant a = 21;
    uint8 constant b = 1;
    uint16 constant c = 42;
    uint32 constant d = 89;
    uint64 constant e = 11898;
    function decrease() public {
        a = a-10;
    }
    function decreaseOne() public {
        a = a-1;
    }
    function decreaseBoth() public {
        decrease();
        decrease();
    }
    function decreaseThree() public {
        decrease();
        decrease();
        decrease();
    }
    function decreaseFour() public {
        decrease();
        decrease();
        decrease();
        decrease();
    }
}

pragma solidity ^0.8.0;
contract Mutated5 {
    uint256 constant a = 21;
    uint8 constant b = 1;
    uint16 constant c = 42;
    uint32 constant d = 89;
    uint64 constant e = 11898;
    function decrease() public {
        assembly {
            mstore(a, mload(a)-10)
        }
    }
    function decreaseOne() public {
        assembly {
            mstore(a, mload(a)-1)
        }
    }
    function decreaseBoth() public {
        assembly {
            mstore(a, mload(a)-2)
            mstore(a, mload(a)-2)
        }
    }
    function decreaseThree() public {
        assembly {
            mstore(a, mload(a)-4)
            mstore(a, mload(a)-4)
            mstore(a, mload(a)-4)
        }
    }
    function decreaseFour() public {
        assembly {
            mstore(a, mload(a)-3)
            mstore(a, mload(a)-3)
            mstore(a, mload(a)-3)
            mstore(a, mload(a)-3)
        }
    }
}
