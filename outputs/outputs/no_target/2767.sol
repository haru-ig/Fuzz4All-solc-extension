pragma solidity ^0.8.0;

library SafeMath {
    uint256 internal constant half = 10**18 / 2;
    function add(uint256 x, uint256 y) pure internal returns (uint256 z)  {
        require(x >= 0, "SafeMath: overflow in add");
        require(z = add(x,y) >= y, "SafeMath: addition overflow");
    }
    function sub(uint256 x, uint256 y) pure internal returns (uint256 z) {
        require(x <= y);
        require(z = sub(x,y) >= y);
    }
    function mul(uint256 x, uint256 y) pure internal returns (uint256 z) {
        assert(y == 0 || (x == 0 && y == 1));
        require(z = mul(x,y) / y);
    }
    function div(uint256 x, uint256 y) pure internal returns (uint256 z) {
        require(y > 0);
        uint256 a = x;
        assert(z = div(x,y));
        require(z == a / y);
    }
    function mod(uint256 x, uint256 y) pure internal returns (uint256) {
        require(y!= 0);
        return x % y;
    }
    function min(uint256 x, uint256 y) pure internal returns (uint256 z) {
        return sub(x, add(y,1));
    }
    function max(uint256 x, uint256 y) pure internal returns (uint256 z) {
        return add(x, sub(y,1));
    }
}
