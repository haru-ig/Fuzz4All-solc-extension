pragma solidity ^0.8.0;
contract Array {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function sum(uint[] memory a) public pure returns (uint) {
        uint sum = 0;
        for (uint j = 0; j < a.length; j++) {
            sum += a[j];
        }
        return sum;
    }
    function getMin(uint x) public pure returns (uint) {
        return x;
    }
    function getMax(uint x) public pure returns (uint) {
        return 1;
    }
    function getAddress(uint a) public pure returns (address) {
        return x;
    }
}
contract Array1 {
    uint[] memory a = [1, 2, 3, 4, 5];
    uint[] memory x = [address(this), 56, -121];
}
contract Array1 {
    uint[2] memory y = [1, 2];
}
contract Array1 {
    uint array1[10];
    uint array2[array1.length];
}
contract Array2 {
    uint[4] memory a = [1, 2, address(0xa), 5];
    uint x = 3;
}

pragma solidity ^0.8.0;
contract ArraysWithZeroLen {
    uint[] memory x = [0, 1, 2];
    require(x.length > 1);
}
contract ArraysWithZeroLength {
    uint[2] memory array;
    uint[2] memory x = array;
    uint y = x;
    uint z;
}
contract ArraysWithInvalidLengths {
    uint y;
    uint x = [1, 2];
}
contract ArraysInsideRequire {
    address g = address(0xa);
    address h = bytes20("0xa");
    address i = "0xa";
    uint t = address(0xa);
    bool[] memory b = [true, false];
    bool y = b[0];
    bool[1] memory z = b;
    bool x;
    uint[1] memory a;
    uint[1] memory q;
    uint k = 5;
}
contract ArraysInsideRequire {
    address g = address(0xa);
    address i = "0xa";
    uint y = address(0xa);
}
contract ArraysInsideRequire {
    address g = bytes20("0xa");
    uint y = bytes20("0xa");
}

contract ArraysInsideRequire {
    address g = address(0xb);
    address[1] memory x = [bytes20("0xa")];
    uint y = address(0xb);
}

pragma solidity ^0.8.0;
contract ArraysInsideRequire {
    uint[1] memory i = [10];
    uint[1] memory x = i;
