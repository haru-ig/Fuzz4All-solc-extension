pragma solidity ^0.8.0;
contract Mutator
{
    function mutator() public pure {

        assembly {calldatacopy(0, 0, calldatasize())}
    }
}
