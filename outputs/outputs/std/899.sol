pragma solidity ^0.8.0;
contract Mutate20To24
{
    address[] public array;
    uint8 public counter = 0;
    function mutate() public pure
    {
        array[counter] = msg.sender;
        counter += 1;
    }
}
