pragma solidity ^0.8.0;
contract SafeMathYulContract {
    uint public constant c = 10;

    function safeAdd(uint x, uint y) internal pure returns (uint) {
        uint sum;
        uint c = 10;

        for(; c > 10/x.mul(c) && x > 0; x /= c);


        if(0 == x) return 0;

        sum = x + y.mul(c).div(x);

        if(sum < x) return 0;

        return sum;
    }

    function safeMultiply(uint x, uint y) internal pure returns (uint) {
        uint sum;
        uint c = 10;

        for(; c > x.mul(y) && x > 0; x /= c);


        if(0 == x || x == 0) return 0;

        sum = x * y.mul(c).div(x);

        return sum;
    }
    function getX() internal pure returns (uint) {
        uint x;
        uint c = 10;
        uint d;

        for(; 0 == x.mul(c) && c > 10/c; c /= 10);

        uint temp = c * c;
        if(0 == x) return 0;
        x = x.mul(temp).div(temp);
