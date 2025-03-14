pragma solidity ^0.8.0;
contract MutateSemantic6Caller2 is MutateSemantic6Caller3 {
    function modifyC7(uint256 x) pure public returns (uint) {
        return x*(2 + x) + 1;
    }
    function modifyC8(uint256 x) pure public returns (uint) {
        return 9*5 + 3*x + 17;
    }
    function modifyC9(uint256 x) pure public returns (uint) {
        return 7*(3*x + x*(x - y) + (x - y) + 9) + 5;
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic6Caller1 is MutateSemantic6Caller2 {
    function modifyC7(uint256 x) pure public returns (uint) {
        return x*(2*(2 + 4*x) + 1) + 5;
    }
    function modifyC8(uint256 x) pure public returns (uint) {
        return 9*3 + 3*x + 19;
    }
    function modifyC9(uint256 x) pure public returns (uint) {
        return 7*8 + 3*((x - 8)*(x - 4) + 9) + 17;
    }
}
contract Caller {
    function mutatedCaller() public view returns(uint) {
        uint x = 7;
        uint y = 4;
        x = x*(0 + x) + 1;
        y = 16*y + 3;
        return MutateSemantic6Caller1.modifyC7(x, y);
    }
}
