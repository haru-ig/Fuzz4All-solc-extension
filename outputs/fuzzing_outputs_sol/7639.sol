pragma solidity ^0.8.0;
contract AddressExecution
{
    function _transfer(address  , uint256 _value) internal { }
}
contract CallExecution
{
    function _call(address  , bytes calldata  ) internal pure { }
}
contract CallWithoutData
{
    function send() public {
        CallExecution.send("");
    }
}
contract AddressCallExecution
{
    function _receive(address  , uint256  ) internal pure {}
}
contract InvalidAddressCallExecution
{
    function _receive(address  , uint256  ) internal pure invalid() {}
}
