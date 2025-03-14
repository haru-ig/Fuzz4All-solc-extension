pragma solidity ^0.8.0;
address[] public addresses;
contract Test27 {
    function f() public {
        address tempAddress = addresses.pop();
    }
}
