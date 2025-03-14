pragma solidity ^0.8.0;
contract HelloWorld {



    function hello() public pure returns (uint) {
        return 100;
    }
    function fact(uint64 n) public pure returns (uint) {
        uint num = 100;
        for (uint i = n; i >= 2; i--) {
            num = num * i;
            if (num >= 1 ether) {
                break;
            }
        }
        return num;
    }
    function fact_(uint256 n) public pure returns (uint256) {
        uint256 num = 100;
        for (uint256 i = n; i >= 2; i--) {
            num = num * i;
            if (num >= 1 ether) {
                break;
            }
        }
        return num;
    }
    function fact_a(uint n) public pure returns (uint) {
        uint num = 100;
        for (uint i = n; i >= 2; i--) {
            num = num * i;
            if (num >= 1 ether) {
                return num;
            }
        }
        return num;
    }
    function fact_b(uint n) public pure returns (uint) {
        uint256 num = 100;
        for (uint256 i = n; i >= 2; i--) {
            num = num * i;
            if (num >= 1 ether) {
                return num;
            }
        }
        return num;
    }
}
