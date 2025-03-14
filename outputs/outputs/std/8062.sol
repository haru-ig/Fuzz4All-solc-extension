pragma solidity ^0.8.0;
contract Array_mutations{
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[] storage a)public{
        {
            a[_b] = a[7];
        }
    }
}
