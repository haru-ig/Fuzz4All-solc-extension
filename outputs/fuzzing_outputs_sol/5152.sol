pragma solidity ^0.8.0;
contract Fallback1 {
    receive () external pure {}
    fallback () external pure {}
}
contract Fallback3 {
    receive () external pure {}
    fallback () external pure {}
    receive (uint) external pure {}
    fallback (int) external pure {}
}
