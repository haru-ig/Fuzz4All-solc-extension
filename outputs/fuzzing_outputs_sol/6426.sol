pragma solidity ^0.8.0;
import "./Caller.sol";
contract Fallback {
    fallback payable Caller x;
}
