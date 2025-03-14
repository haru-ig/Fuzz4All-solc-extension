pragma solidity ^0.8.0;
contract MemInt {
    uint public arrayAddress;
    function constructor(uint inputArr) public {
        arrayAddress = inputArr;
    }
    function modifyArray() public returns (uint) {
        uint256 i = 0;
        while (i < 10) {
            uint256 num = i;
            arrayAddress.writeInt(num);
            i = i + 1;
        }
        return i;
    }
    function getArray() public view returns (uint) {
        uint256 i = 0;
        while (i < 10) {
            uint256 num = arrayAddress.readInt();
            if (num == i) {
                return num;
            }
            i = i + 1;
        }
        return arrayAddress;
    }
}

contract Multiprecision {
    uint public constant MAX_PRECISION = 256;
    uint public precision;
    uint public intData;
    uint public arrayAddress;
    function constructor(uint p) public {
        precision = p;
    }
    function testAdd(uint256 x, uint256 y) public pure returns (uint256) {
        return add(x, y);
    }
    function add(uint256 x, uint256 y) public pure returns (uint256) {
        uint m = precision-1;
        return (mul(x, y)).div(mul(2**(precision-1), 2**(m-1))).add(mul(2**.(m-1), y));
    }
    function testSub(uint256 x, uint256 y) public pure returns (uint256) {
        return sub(x, y);
    }
    function sub(uint256 x, uint256 y) public pure returns (uint256) {
        uint m = precision-1;
        return (mul(x, y)).div(mul(2**(precision-1), 2**(m-1))).sub(mul(2**.(m-1), x));
    }
    function testMut(uint256 x) public pure returns (uint256) {
        return mut(x);
    }
    function mut(uint256 x) public pure returns (uint256) {
        return mul(x, 2);
    }
    function testGetInt(uint x) public pure returns (uint) {
        return (x);
    }
    function testWriteInt(uint x) public {
        uintData = x;
    }
    function testGetArray(uint x) public view returns (uint) {
        return (x).add(x.mul(1));
    }
    function testWriteArray(uint x) public {
        arrayAddress.writeInt(x);
    }
    function testGetAddress(uint x) public view returns (uint) {
        return (0).add(x);
    }
    function testWriteAddress(uint x) public {
