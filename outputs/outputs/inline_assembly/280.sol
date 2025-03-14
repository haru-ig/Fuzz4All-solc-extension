pragma solidity ^0.8.0;
contract E8
{
    address _address;
    function _setAddress (address _a) internal { _address = _a; }
    function getAddress() public view returns (address){ return _address; }
}
