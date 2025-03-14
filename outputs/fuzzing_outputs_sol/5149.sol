pragma solidity ^0.8.0;
contract C9 {
    receive () external payable {}
    fallback () external payable {}
    receive () private {}
}
