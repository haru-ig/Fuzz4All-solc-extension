pragma solidity ^0.8.0;
contract MutatedFallback1 {
    function test1(uint256) public {
        assembly {
            calldatacopy(0x04, 0x0200, mload(0x310))
        }
        uint256 tmp = 1;
        assembly {
            tmp := add(tmp, mload(0x40), mul(100, 5))
        }
        assembly {
            mstore(0x40, 0x00)
        }
    }
    function test2() public {
        assembly {
            calldatacopy(0x04, 0x0200, mload(0x310))
        }
        uint256 tmp = 2;
        assembly {
            tmp := add(tmp, mload(0x40), mul(100, 5))
        }
        if (false) {
            assembly {
                mstore(0x40, 0x00)
            }
        }
        else {
            assembly {
                mstore(0x40, 0x00)
            }
        }
    }
}
