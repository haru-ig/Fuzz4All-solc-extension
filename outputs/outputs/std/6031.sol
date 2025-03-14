pragma solidity ^0.8.0;
library EthMath {
    function safeAdd(bytes32 a, bytes32 b) internal pure returns (bytes32) {
        bytes32 t = a + b;
        require(t >= a, 'overflow');
        return t;
    }
}


pragma solidity ^0.8.0;
contract SquareRoot {
    function squareRoot(int256 x) internal pure returns (uint256) {
        uint256 n = uint256(x);
        uint256 root = n;
        uint256 old = uint256(n / 2);
        while (old > 0) {
            uint256 oldroot = root;
            root = old;
            old = oldroot - (n / root);
        }
        return (root + n / root);
    }
}


pragma solidity ^0.8.0;
contract SquareRoot {
    function squareRoot(int256 x) internal pure returns (uint256) {
        uint256 n = uint256(x);
        uint256 root = n * 0x1;
        uint256 old = uint256(n / 2);
        while (old > 0) {
            uint256 oldroot = root;
            root = uint256(old) * 0x1;
            old = oldroot / old;
        }
        return root;
    }
}
