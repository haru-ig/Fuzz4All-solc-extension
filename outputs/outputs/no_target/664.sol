pragma solidity ^0.8.0;
library SafeMath {

    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {



        if (a == 0) {
            return 0;
        }

        c = a * b;
        assert(c / a == b);

        return c;
    }


    function div(uint256 a, uint256 b) internal pure returns (uint256) {


        assert(b > 0);
        uint256 c = a / b;


        return c;
    }


    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }


    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
        c = a + b;
        assert(c >= a);
        return c;
    }

    function sqrt(uint256 a) internal pure returns (uint256){
        uint256 b = a;
        uint256 root = b / 2 + 1;

        while (b > root) {
            uint256 q = (a / b
