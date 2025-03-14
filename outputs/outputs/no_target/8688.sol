pragma solidity ^0.8.0;
contract NotChangedABIv2
{
    event SetAddress(address x);
    function SetAddress(bool flag) public {
        emit SetAddress(address(this));
    }
}
