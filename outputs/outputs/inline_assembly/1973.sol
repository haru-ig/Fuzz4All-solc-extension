pragma solidity ^0.8.0;
contract NewY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;

    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x;
        b[y] = x + 12;
        b[x2] = x + y;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x + 5;
        b[y] = x + x2;
        x2 = x + 1;
        a[y] = x + 4;
    }
    function div(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint256 x2_2 = 2 * x;
        a[x] = x + 10;
        b[x2_2] = x + x2;
        a[x2_2] = x + x2;
        b[x2] = x2_2 + x2_2;
        a[x2] = x;
        b[y] = x2_2 + a[x2] + x2 + x;
    }
    function mul(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint256 x2_2 = 2 * x;
        a[x2] = x + 1000;
        b[x2_2] = x + x*y + x+x2;
        a[x2] = x + x2;
        b[y] = x + x*a[x2] + x+x2 + x*x;
        a[y] = x;
    }
}
