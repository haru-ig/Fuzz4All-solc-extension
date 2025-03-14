pragma solidity ^0.8.0;
library SafeMath {

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {



        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }


    function mul(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {



        if (a == 0) {
            return 0;
        }

        uint256 d = a * b;
        require(d / a == b);
        uint256 e = a * c;
        require(e / a == c);

        return d + e;
    }


    function div(uint256 a, uint256 b) internal pure returns (uint256) {

        require(b > 0);
        uint256 c = a / b;


        return c;
    }


    function div(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {

        require(b > 0);
        uint256 d = a / b;




        return d;
    }


    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b!= 0);
        return a % b;
    }
}
