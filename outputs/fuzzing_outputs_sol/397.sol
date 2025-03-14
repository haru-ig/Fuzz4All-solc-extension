pragma solidity ^0.8.0;
contract GoodCaller {
    receive() payable {}
    fallback () external {}
}
