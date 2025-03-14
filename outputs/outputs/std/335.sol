pragma solidity ^0.8.0;
contract MyContract {
    function printData(uint i) public pure {
        uint memory local = 155;
    }
}
contract Test {
    function test(MyContract[] memory a) public {
        require(a.length == 1, "array has wrong length!");
    }
}



pragma solidity ^0.8.0;

contract Array {

    uint256 public length = 0;


    uint256[10] memory x;
    uint[] xArr;
    mapping(uint => uint) public counter;


    function setAt(uint i, uint value) public {
        x[i] = value;
        xArr[index(i)] = value;
    }


    function getAt(uint i) public view returns (uint) {
        return x[i];
    }


    function getAtIndex(uint i) public view returns (uint) {
        return x[index(i)];
    }


    function index(uint i) public pure returns (uint) {
        return i;
    }


    function setToTrue(uint i) public {
        x[index(i)] = x[index(i)] + 1;
    }
}



pragma solidity ^0.8.0;
library Convert {
    function toUint256(string calldata hex) internal pure returns (uint) {
        assembly {
                let b := mload(add(hex, 0x20))
                mstore(0, b)
                let i8 := and(b, 0xff)
                let i16 := and(and(b, 0xff00), 0xff)
                let lo := or(and(and(i8, 0x7f), 0x80), i16)
                let hi := not(or(and(i8, 0x7f), i16))
                mstore(0x20, hi)
                mstore(0x10, lo)
                let result := and(or(lo, hi), 0xffffffffffffffffffffffffffffffffffffffffffffffff)
                return result
        }
    }
}



pragma solidity ^0.8.0;
library Math {

    function max(uint256 a, uint256 b) internal pure
