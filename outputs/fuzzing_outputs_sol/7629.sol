pragma solidity ^0.8.0;
contract FallbackModification
{
    address public immutable addr;
    constructor()
    {
        addr = msg.sender;
    }
}
pragma solidity ^0.8.0;
contract Caller
{
    address public immutable addr;
    function Caller() public
    {
        addr = msg.sender;
    }
    function CallFallback(address i) public payable returns(uint256)
    {
       uint result;
       assembly
       {
               let result := calldatacopy(keccak256(add(0, 0x29)))
               return(result, mload(add(0, returndatasize())))
       }
    }
}
