pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;

contract TokenReceiver{
    function onERC20Received( address _from, address _to, uint256 _value, bytes memory _data ) public returns ( bytes4 magicValue );
}
