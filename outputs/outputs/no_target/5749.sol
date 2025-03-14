pragma solidity ^0.8.0;
contract Baz {
    function f() view returns (address foo) {
        return msg.sender;
    }
}
