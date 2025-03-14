pragma solidity ^0.8.0;
contract Caller is User {
    function () public payable {
        fallbackContract.call{value: msg.value}('');
    }
}
