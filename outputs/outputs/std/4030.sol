pragma solidity ^0.8.0;
contract Array {
    struct Node { uint val1; uint val2; uint val3; uint next; }
    Node head;
}
contract Convert {
    function byteToString(uint i, string memory str) public pure returns (string memory) {
         if (i == 0) {
             return ("0");
         }
         uint j = 0;
         str = "";
         while (i!= 0) {
             str = (48 + i % 10).ToString() + str;
             i /= 10;
         }
        return(str);
        }
}
contract Math {
    function addition(uint x, uint y) public pure returns (uint) {
        uint z;
        assembly {
            mstore(add(z, x), y)
        }
        return z;
    }
    function additionWithInputCheck(uint x, uint y) public pure returns (uint) {
        return addition(x, y);
    }
    function additionOf(uint x, uint y) public pure returns (uint) {
        uint z;
        assembly {
            mstore(add(z, x), y)
        }
        return (x + y < y * 10)? x : z;
    }
    function subtraction(uint x, uint y) public pure returns (uint) {
        uint z;
        assembly {
            mstore(add(z, x), x-y)
        }
        return z;
    }
    function subtractionWithInputCheck(uint x, uint y) public pure returns (uint) {
        return subtraction(x, y);
    }
    function subtractionOf(uint x, uint y) public pure returns (uint) {
        uint z;
        require(x!= 0 || y!= 0, "DivisionByZero");
        assembly {
            mstore(add(z, x), x-y)
        }
        return (x - y < x * 10)? x : z;
    }
    function multiplication(uint x, uint y) public pure returns (uint) {
        uint z;
        assembly {
            mstore(add(z, x), x*y)
        }
        return z;
    }
    function multiplicationWithInputCheck(uint x, uint y) public pure returns (uint) {
        return multiplication(x, y);
    }
    function multiplicationOf(uint x, uint y) public pure returns (uint) {
        if(!x &&!y) return 0;
        uint z = 0;
        assembly {
            mstore(add(y, add(x, 0x11111111111111111111111111111111111111111111111111111111111111)),
