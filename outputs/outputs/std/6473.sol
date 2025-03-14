pragma solidity ^0.8.0;
contract Math {
    constructor(uint256 y) {}
    function add(uint256 x, uint256 y)
        public
        pure
        returns (uint256 z)
    {
        return x + y;
    }
    function sub(uint256 x, uint256 y)
        public
        pure
        returns (uint256 z)
    {
        return x - y;
    }
}

library Array {
    function sum(uint256[] memory a, uint256 length)
        internal
        pure
        returns (uint256 sum)
    {
        for (uint256 i = 0; i < length; i++) {
            sum += a[i];
        }
    }
    function min(uint256[] memory a, uint256 length)
        internal
        pure
        returns (uint256)
    {
        uint256 min = a[0];
        for (uint256 i = 1; i < length; i++) {
            if (a[i] < min) {
                min = a[i];
            }
        }
        return min;
    }
    function min64(uint256[] memory a, uint256 length)
        internal
        pure
        returns (uint256)
    {
        uint256 min = a[0];
        for (uint256 i = 1; i < length; i++) {
            if (a[i] < min) {
                min = a[i];
            }
        }
        return min;
    }
    function max(uint256[] memory a, uint256 length)
        internal
        pure
        returns (uint256)
    {
        uint256 max = a[0];
        for (uint256 i = 1; i < length; i++) {
            if (a[i] > max) {
                max = a[i];
            }
        }
        return max;
    }
    function max64(uint256[] memory a, uint256 length)
        internal
        pure
        returns (uint256)
    {
        uint256 max = a[0];
        for (uint256 i = 1; i < length; i++) {
            if (a[i] > max) {
                max = a[i];
            }
        }
        return max;
    }
}
contract Convert {
}
pragma solidity ^0.8.0;
contract Convert {
    function fromBaseN(uint8[] memory n) public pure returns (bytes10) {}
    function toString(uint256 x) public pure returns (string memory) {}
    function toString(uint256 x, uint8 nDigit) public pure returns (string memory) {}
    event Elog(string message);
    function log(string memory message) public pure {

        emit Elog(message);
    }
}
contract Memory {
    function getAddressOf(uint256[] memory ptr) public pure returns (uint256) {}
}
pragma solidity ^0.8.0;
contract Memory {
    function set(uint256[]
