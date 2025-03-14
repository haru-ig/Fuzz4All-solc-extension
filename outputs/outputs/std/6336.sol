pragma solidity ^0.8.0;
Contract Multiprecision {
    function add(uint256 x, uint256 y) public pure returns (uint256){
        uint256 result = 0;
        while (x > 0) {
            uint256 remainder = x % y;
            result = (result + remainder) /y;
            x = x/y;
        }
        return result;
    }
    function subtract(uint256 x, uint256 y) public pure returns (uint256){
        return sub(x,y);
    }
    function multiply(uint256 x, uint256 y) public pure returns (uint256){
        return mul(x,y);
    }
    function divide(uint256 x, uint256 y) public pure returns(uint256 r){
        return mod(div(x,y),y);
    }
    function mod(uint256 x, uint256 y) public pure returns(uint256 r){
        if (x < y) {
            r = x % y;
            return (r + y) / 2;
        } else {
            uint256 t = (x / y);
            if ((t * y) >= x) {
                r = (x % y);
            } else {
                r = y - t*(y % 1);
            }
            return r;
        }
    }
    function div(uint256 x, uint256 y) public pure returns (uint256 r){
        return mul(x, mod(x, y));
    }
    function add_mod_2^729(uint256 x, uint256 y) private pure returns(uint256 r){
        r = x + y ;
        return r;
    }
    function sub_mod_2^729(uint256 x, uint256 y) private pure returns(uint256 r){
        r = x - y;
        return r;
    }
    function mul_mod_2^729(uint256 x, uint256 y) private pure returns(uint256 r){
        r = x * y;
        return r;
    }
    function div_mod_2^729(uint256 x, uint256 y) private pure returns(uint256 r){
        r = div(x, y);
        return r;
    }
    function min(uint256 x, uint256 y) public pure returns (uint256 r) {
        return x < y? x : y;
    }
    function max(uint256 x, uint256 y) public pure returns (uint256 r) {
        return x > y? x : y;
    }
    function sqrt(uint256 x) internal pure returns (uint256 _x) {
        uint256 xhalf = div(x, 2);
        uint256 x4 = add(xhalf
