pragma solidity ^0.8.0;
contract BadMap
{
    address constant _address0 = address(0);
    function constructor()
    {
        if (_address0.call.value(address(this).balance)());
    }
}
