pragma solidity ^0.8.0;
contract HelloWorld {
    function hello() public pure returns (uint) {
        return 100;
    }

    function fact(uint64 n) public pure returns (uint) {
        if (n <= 1) {
            return 1;
        } else {
            uint v;
            assembly {
                v := mload(n)
                mstore(n, mul(v, sub(1, n)))
            }
            return v;
        }
    }
}
