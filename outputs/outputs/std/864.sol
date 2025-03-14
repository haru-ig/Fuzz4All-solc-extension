pragma solidity ^0.8.0;
contract MutateTo3
{
    event SomeEvent(uint indexed id,uint data);

    function mutation() public pure
    {
        SomeEvent.emit(id,id+1);
    }
}
