pragma solidity ^0.8.0;
contract mutatedCaller {
    function sum(int _x, int _y) returns (uint){
        uint x = (uint(_x)); uint y = (uint(_y)); uint z = x+y; x = y; y = x; x = 0xF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F; return 0x654 + z;
    }
    function main() public{
        uint a = sum(10,20); uint b = sum(10,20); uint c = sum(10,20); uint d = sum(10,20); uint e = sum(10,20);
        uint f = sum(10,20); uint g = sum(10,20); uint h = sum(10,20); uint i = sum(10,20);
        uint j = sum(10,20); uint k = sum(10,20); uint l = sum(10,20); uint m = sum(10,20); assert (a + b == 30);
        assert (a + c == 30);
        assert (a + b + c == 30);
        assert (a + b + c + d == 60);
        assert (a + b + c + d + e == 90);
        assert (a + b + c + d + e + f == 120);
        assert (a + b + c + d + e + f + g == 150);
        assert (a + b + c + d + e + f + g + h == 180);
        assert (a + b + c + d + e + f + g + h + i == 210);
        assert (a + b + c + d + e + f + g + h + i + j == 240);
        assert (a + b + c + d + e + f + g + h + i + j + k == 270);
        assert (a + b + c + d + e + f + g + h + i + j + k + l == 300);
        assert (a + b + c + d + e + f + g + h + i + j + k + l + m == 330);
    }
}
