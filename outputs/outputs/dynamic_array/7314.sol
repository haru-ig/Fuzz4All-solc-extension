pragma solidity ^0.8.0;
library Address
{
    function isContract(address account) internal view returns (bool);
    function sendValue(address payable recipient, uint256 amount) internal;
}
