pragma solidity ^0.8.0;
contract Convert {
    function toUint(string memory _a) public pure returns (uint) {
        uint n = 0;
        for (uint _i; _i < _a.length; _i++) {
            n = 8*(_i+1) + uint(bytes(_a).length);
            n = n * 10 + int(bytes(_a).substring(_i, _i+1));
        }
    }
}

pragma solidity ^0.8.0;
contract GetArray {
    uint[] public arrayOf1D;
    uint[10][6] public arrayOf2D;

    uint function f() public pure returns (int[]) {
        return arrayOf1D;
    }
    function g() public pure returns (int[10][6]) {
        return arrayOf2D;
    }
}

pragma solidity ^0.8.0;
contract GetArray {
    uint[] public arrayOf1D;
    uint[10][6] public arrayOf2D;

    function f() public pure returns (int[10], int[]) {
        return (10, array(10));
    }
    function g() public pure returns (int[10][6], uint, uint) {
        return (array(10), 0, 0);
    }
}

pragma solidity ^0.8.0;
contract GetArray {
    uint[10] public arrayOf1D;
    uint[10][6] public arrayOf2D;

    function f() public pure returns (uint, uint) {
        return (10, arrayOf1D);
    }
    function g() public pure returns (uint, uint[10][6] ) {
        return (0, arrayOf2D);
    }
}

pragma solidity ^0.8.0;
contract GetArray {
    uint[] public arrayOf1D;
    uint[10][6] public arrayOf2D;

    function f() public pure returns (uint[], uint[10]) {
        return (int256(10), array(10));
    }
    function g() public pure returns (uint[10][6], uint) {
        return (arrayOf2D, 0);
    }
}

pragma solidity ^0.8.0;
contract GetArray {
    uint[] public arrayOf1D;
    uint[10][6] public arrayOf2D;

    function f() public pure returns (uint, uint) {
        return 10, uint(10);
    }
    function g() public pure returns (uint[10][6], uint) {
        return uint[], 0;
    }
}
/* Please create a
