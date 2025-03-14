pragma solidity ^0.8.0;
library YulContract {
    function addValues3(uint a, uint b, uint c) internal pure returns (uint) {
        return a + b + c;
    }
}

contract YulLibrary {
    uint public x = 5;
    uint public y = 10;

    function addTwoValues() public pure returns (uint) {
        return x + 2 * y;
    }

    function addTwoValues2() public pure returns (uint) {
        uint z = 1;
        uint w = 0;
        uint y = 2;
        if (1 > 2) ++z;
        else {
            uint y = 3;
            uint z = 3;
            z = x + 2 * y;
        }
        return z;
    }

    function addValue(uint t) public pure returns (uint) {
        require(0 < t, "t must be greater than 0");
        return addTwoValues();
    }
}

contract YulContract2 {
    function set(uint x, uint y) public {
        x = x + y;
        x += 5 * y - 2;
    }
}
