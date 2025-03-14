pragma solidity ^0.8.0;
contract MutateSemantic6Caller2 {
    function modifyB1(uint256 x, uint y) pure public returns (uint) {
        return 2*((x + y)*(x + y));
    }
    function modifyB2(uint256 x, uint y) pure public returns (uint) {
        return 13*(x + 3 + (y - 1));
    }
    function modifyB3(uint256 x, uint y) pure public returns (uint) {
        return 19*(x + y + x * (2 - y));
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic6Caller1{
    function modifac5(uint256 x, uint256 y, uint256 z) pure public returns (uint256) {
        if(x == 0) {
            return 0;
        } else if(x / 2 < y && y / 2 < z) {
            revert();
        } else if(x / 6 < y && (y / 6 < z + 1)) {
            return 13*(x - y/2 + y/2 + 4*y);
        } else if(x / 2 < z && (z / 2 < y + 3*x || (x / 6 < y && (y / 6 < z + 3)))) {
            return 21*(x + x*2);
        } else {
            return
}
    }
    function modifyB4(uint256 x, uint256 y, uint256 z) pure public returns (uint256) {
        if(x == 0) {
            return 0;
        } else if(x / 2 < y && y / 2 < z) {
            revert();
        } else if(x / 6 < y && (y / 6 < z + 1)) {
            return 13*(x - y/2 + y/2 + 4*y);
        } else if(x / 2 < z && (z / 2 < y + 3*x || (x / 6 < y && (y / 6 < z + 3)))) {
            return 21*(x + x*2);
        } else {
            return 0;
        }
    }

    function modifyB6(uint256 x, uint
