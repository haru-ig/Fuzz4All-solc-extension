pragma solidity ^0.8.0;
contract Array {
    function findMax(uint[] memory a) public returns (uint b) {
        b = a[0];
        for (uint i = 1; i < a.length; i++) {
            if (b < a[i])
                b = a[i];
        }
        return b;
    }

    function findMin(uint[] memory a) public returns (uint b) {
        b = a[0];
        for (uint i = 1; i < a.length; i++) {
            if (b > a[i])
                b = a[i];
        }
        return b;
    }
    function sum(uint[] memory a) public returns (uint b) {
        b = 0;
        for (uint i = 0; i < a.length; i++) {
            require(b < Type.MAX_INT, "Integer overflow");
            b += a[i];
        }
        return b;
    }
}

contract Multiprecision {
}
