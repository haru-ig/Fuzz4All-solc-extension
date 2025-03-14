pragma solidity ^0.8.0;
contract Mutated
{
        function mutate() external { mutate(address(0x00000001)); }
        receive() payable external {}
        fallback() external {}
}
