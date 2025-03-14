pragma solidity ^0.8.0;
contract E8
{
    function modify() public {
        uint _x;
        E7(address(this)).subtract(_x);
    }
}
