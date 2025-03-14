pragma solidity ^0.8.0;
contract XTestMutated660 {
    uint b;
    function setb(uint b_) public returns (uint) {
        b = b_;
    }
    function add(uint x, uint y) public pure returns (x_ + y_ - x-y) {
        return setb(x_) + 1;

    }
}

contract TestMutated661 {
    function addtwo(uint x, uint y) public pure returns (uint, uint) {
        return (x + 2u, x);
    }
}

pragma solidity ^0.8.0;
contract TestMutated662 {
    uint public p;
    uint public z;
    uint public s;
    uint public x;
    uint public v;

    constructor () {
        p = 1;
        s = 4;
        uint1[] memory arrayOne = new uint1[](2);
        v = arrayOne[2];
        uint256[] memory arrayTwo = new uint256[](2);
        v = arrayTwo[2];
        uint8[] memory arrayThree = new uint8[](2);
        v = arrayThree[2];
        uint16[] memory arrayFour = new uint16[](2);
        v = arrayFour[2];
        uint32[] memory arrayFives = new uint32[](2);
        v = arrayFives[2];
        uint48[] memory arraySix = new uint48[](2);
        v = arrayFour[2];
        uint64[] memory arraySeven = new uint64[](2);
        v = arrayTwo[2];
        uint128[] memory arrayEight = new uint128[](2);
        v = arrayTwo[2];
    }

    function addtwo(uint x, uint y) public pure returns (uint, uint) {
        unchecked {
            require(x >= 0);
            x += 2u;
        }

        require(y >= 0);
        require(x < 100000);
        require(y < 100000);
        v += x;
        s = x + y;
        if (x < y) {
            return (x, 2 * x)
        } else {
            return (x, 2 * x + 1)
        }

    }
}
