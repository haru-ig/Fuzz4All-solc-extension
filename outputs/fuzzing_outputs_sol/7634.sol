pragma solidity ^0.8.0;
contract FallbackModification
{
    address public immutable addr;
    fallback () payable {
        addr;
    }
}
