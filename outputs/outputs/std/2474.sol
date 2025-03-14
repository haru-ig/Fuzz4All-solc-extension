pragma solidity ^0.8.0;
contract Array {
    uint public array[5];
    function set() public { array.set(0, 5);
    }
}
contract NoContract {
    function set() public {
        array.sub(0, 1);
    }
}
pragma solidity ^0.8.0;
contract Convert {
    function bytesToUint(bytes memory b) internal view returns (uint w) {
        byte[] memory bytes = b;
        require(bytes.length == 0 || bytes[0] == 0x00);
        for (uint i = 0; i < bytes.length; i++) {
            uint v = bytes[i] & 0xff;
            w = w * 256 + v;
        }
    }
}
pragma solidity ^0.8.0;
contract Math {

    function sqrt(uint x) internal pure returns (uint y) {
        y = x / 2 + 1;
        while (y > 1) {
            y = (x / y) / 2;
        }
    }

    function modPow(uint base, uint exponent) internal pure returns (uint result) {
        if (exponent == 0) {
            return 1;
        }
        result = modPow(base, exponent / 2);
        if (exponent % 2!= 0) {
            if (base % 2!= 0) {
                result = (result * result) % 2**256;
            } else {
                result = (result * 2) % 2**256;
            }
        }
    }
}
pragma solidity ^0.8.0;
contract memoryAccess {
    function writeUint8(address a, uint8 b) public {
        assembly {
            a.store8(1, b)
        }
    }
    function writeUint8arr(address a, bytes memory dmy) public {
        assembly {
            mstore(a, dmy)
        }
    }
    function readUint8(address a) public view returns (uint8 m) {
        assembly {
            m := a.load8(1)
        }
    }
    function readUint8arr(address a) public view returns (bytes32 m) {
        assembly {
            m := a.load(1)
        }
    }
    function writeInt25(address a, uint256 b) public {
        assembly {
            a.store(2, b)
        }
    }
    function writeInt25arr(address a, bytes memory dmy) public {
        assembly {
            mstore(a, dmy)
        }
    }
    function readInt25(address a) public view returns (uint256 m) {
        assembly {
            m := a.load(2)
        }
    }
    function readInt25arr(address a) public view returns (bytes memory m) {
        assembly {
            m := a.load(2)
        }
    }
    function writeUint16(address a, uint16 b) public {
        assembly {
            a.store(3, b)
        }
    }
    function writeUint16arr(address a, bytes memory dmy) public {
        assembly {
