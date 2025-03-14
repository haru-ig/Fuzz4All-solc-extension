pragma solidity ^0.8.0;
using Lib;
contract Fallback {
    fallback () external payable {

    }
    receive () external payable {}
}
