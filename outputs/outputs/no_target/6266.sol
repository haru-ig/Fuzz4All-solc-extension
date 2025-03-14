pragma solidity ^0.8.0;
contract MyContract {
    function method(bytes32 _bytes) public pure returns (bytes32) {
        return 0;
    }
}
contract MyContract {
    function method(bytes32 _byte) public pure returns (bytes32) {
        unchecked {
            return 0;
        }
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    function method() public payable returns () {
        (uint x, uint y, uint z) = (2, 3, 4);
        y = x ^ y;
        x = x ^ z;
        x = z + x;
        delete x;
        x = uint160(-1);
        x += 2;
        bytes32 x0;
        x0 = x0 + x;
        unchecked {
            if (x0 == bytes32(-1)) {
                bytes32 x1;
                x1 = unchecked(x0);
                x1 += x0;
            }
            x1 = 0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE26F255620C6590232BF3CF97B7DC49628;
        }
    }
}
contract MyContract {
    function method(uint _uint) public pure returns (uint) {
        unchecked {
            return _uint;
        }
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    function method() public pure returns (uint) {
        unchecked {
            uint x;
            x ^= 0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE26F255620C6590232BF3CF97B7DC49628^uint(0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE26F255620C6590232BF3CF97B7DC49628);
            uint y;
            unchecked(uint(0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE26F255620C6590232BF3CF97B7DC49628) + uint(0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE26F255620C6590232BF3CF97B7DC49628));
            return x;
        }
    }
}
