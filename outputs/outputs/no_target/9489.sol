pragma solidity ^0.8.0;
contract Contract33 is Interface57 {
    function f(uint x) external view returns (bool) {
        return x > 0 && x < uint160(-1 << 256);
    }
}

pragma solidity ^0.8.0;
contract Contract40 {
    function f(address x) external view returns (bool) {
        if (x >= uint256(uint160(100000))) {
            return x > uint160(2 ** 256 - 1) && x < uint160(2 ** 256 - 2);
        } else {
            return false;
        }
    }
}
