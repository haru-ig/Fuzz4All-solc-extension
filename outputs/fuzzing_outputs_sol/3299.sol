pragma solidity ^0.8.0;
contract Test {
    function main() {
        SomeContract S = new SomeContract();
        S.highLevel();
        emit transfer("0x", 100);
    }
}

contract Fallback {
    function fallback () public payable {}
}
