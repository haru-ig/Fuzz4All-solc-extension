pragma solidity ^0.8.0;
contract SolidityExample {
    string s;

    function () payable {}

    function greeting() external payable {
        s = msg.data;
    }
}
