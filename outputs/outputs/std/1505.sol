pragma solidity ^0.8.0;



library SafeMath {



function add(uint256 a, uint256 b) pure internal returns (uint256) {
    uint256 c = a + b;
    require(c >= a, "SafeMath: addition overflow");
    return c;
    }



function sub(uint256 a, uint256 b) pure internal returns (uint256) {
    return sub(a, b, "SafeMath");
    }




function sub(uint256 a, uint256 b, string memory message) pure internal returns (uint256) {
    require(b <= a, message);
    uint256 c = a - b;
    return c;
    }



function mul(uint256 a, uint256 b) pure internal returns (uint256) {



    if (a == 0) {
        return 0;
    }

    uint256 c = a * b;
    require(c / a == b, "SafeMath: multiplication overflow");
    return c;
    }



function div(uint256 a, uint256 b) pure internal returns (uint256) {
    require(b > 0, "SafeMath: division by zero");
    uint256 c = a / b;

    return c;
    }
    /**
 @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     reverting
