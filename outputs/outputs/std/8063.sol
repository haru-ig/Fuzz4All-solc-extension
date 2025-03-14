pragma solidity ^0.8.0;
contract Array_mutatons{
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[] memory a)public{
        {
            a[6] = a[8];
        }
    }
    function set_a_(uint256 _a, uint256 _b, uint256 _c, uint[] memory a)public{
        {
            a[_b] = a[5];
        }
    }
}
