pragma solidity ^0.8.0;
contract C {
    function f(uint x) view public pure {
        I(msg.sender).transfer(x + 1);
    }
}
