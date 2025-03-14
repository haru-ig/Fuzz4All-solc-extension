pragma solidity ^0.8.0;
contract Array_mutatons{
    uint256 immutable public MIN;
    uint256 immutable public MAX;
    uint256 internal A_MIN;
    uint256 internal A_MAX;

    uint256[10] private a;
    function __Array_mutatons(){
        MIN = 0;
        MAX = 1;
        A_MIN = 1000000000000000000;
        A_MAX = 9999999999999999999;
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[] memory a)public{
        {
            a[_b] = a[7];
        }
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[11] memory a)public{
        {
            a[_b] = a[8];
        }
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[9] memory a)public{
        {
            a[_b] = a[6];
        }
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[10] memory a)public{
        {
            a[_b] = a[5];
        }
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[12] memory a)public{
        {
            a[_b] = a[7];
        }
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[99] memory a)public{
        {
            a[_b] = a[11];
        }
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[999] memory a)public{
        {
            a[_b] = a[27];
        }
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[9999] memory a)public{
        {
            a[_b] = a[43];
        }
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[] memory a)public{
        {
            a[_b] = a[8];
        }
    }
    function set_a(
