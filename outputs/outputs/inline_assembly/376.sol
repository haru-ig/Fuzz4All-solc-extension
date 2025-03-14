pragma solidity ^0.8.0;
contract M9 {
    constructor() {}
    function sum() public {
        assembly {

            let a := mload(0x40)
            let b := add(a, 0x10)

            mstore(a, 0x00)
            mstore(add(a, 0x10), 0x01)
            mstore(add(b, 0x10), 0x02)
            mstore(add(b, 0x20), 0x03)
            mstore(add(b, 0x30), 0x04)
            mstore(add(b, 0x40), 0x05)
            mstore(add(b, 0x50), 0x06)
            mstore(add(b, 0x60), 0x07)
            mstore(add(b, 0x70), 0x08)

            b := add(b, 0x8000)

            mstore(b, add(mload(a),0x10001))
            mstore(a+0x10, 0xbad)
            return(b)
            }
        }
    }
    }
    }
    }
    }
    }
    }
