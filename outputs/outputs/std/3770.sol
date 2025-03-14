pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint x) internal pure returns (uint) {}
    function modularExp(uint base, uint exponent, uint modulus) internal pure returns (uint) {}
}

pragma solidity ^0.8.0;
contract Memory {
    uint[] internal arr;

    function addressOf(uint x) public pure returns (address) {
        return arr[x];
    }

    function get(uint x) public pure returns (uint) {
        return arr[x];
    }
}

pragma solidity ^0.8.0;
contract Arrays {
    uint[10] internal arr;

    function addressOf(uint x) public pure returns (address) {
        return arr[x];
    }

    function indexOf(uint[] memory values, uint val) public pure returns (uint) {
        for (uint i = 0; i < values.length; ++i) {
            if (values[i] == val) {
                return i;
            }
        }
        revert("not in array");
    }
}
