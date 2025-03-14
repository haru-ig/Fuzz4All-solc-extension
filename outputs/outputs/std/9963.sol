pragma solidity ^0.8.0;
contract Mutate {
    uint a;
    uint256 x;
}
contract AdjustNumber {
    uint8 a;
    uint256 x;
}
contract Number {

    function numAdd(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 num;
        num = a + b;
        return num;
    }
     function numSubt(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 num;
        num = a - b;
        return num;
    }
    function numMult(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 num;
        num = a * b;
        return num;
    }
    function numDiv(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 num;
        if (b == 0) {
            revert();
        }
        num = a / b;
        return num;
    }
    function numEq(uint256 a, uint256 b) public pure returns (bool) {
        bool res;
        res = a == b;
        return res;
    }
    function numGt(uint256 a, uint256 b) public pure returns (bool) {
        bool res;
        res = a > b;
        return res;
    }
    function numGtEq(uint256 a, uint256 b) public pure returns (bool) {
        bool res;
        res = a >= b;
        return res;
    }
    function numLt(uint256 a, uint256 b) public pure returns (bool) {
        bool res;
        res = a < b;
        return res;
    }
    function numLtEq(uint256 a, uint256 b) public pure returns (bool) {
        bool res;
        res = a <= b;
        return res;
    }
    function numLtEqNum(uint256 a, uint256 b) public pure returns (bool) {
        bool res;
        res = a <= b;
        return res;
    }
    function numEqNum(uint256 a, uint256 b) public pure returns (bool) {
        bool res;
        res = a == b;
        return res;
    }
    function numStrToUint(string memory str) public pure returns (uint256) {
        uint256 num;
        if(str == "0") num = 0;
        else {
            bytes memory inputBytes = bytes(str);
            uint8 len = 0;
            assembly {
                let b := mload(add(inputBytes, 32))
            }
            if(b>101 && b<112) {
                len = len + 1;
                if( (inputBytes[len-2] >= 48 && inputBytes[len-2] <= 57) &&  (inputBytes[len-1] <= 47))
                    len = len + 1;
            }
