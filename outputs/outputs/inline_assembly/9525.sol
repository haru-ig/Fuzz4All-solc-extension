pragma solidity ^0.8.0;
contract MyContract {
    bool public b2;
    function foo() public returns (uint) {
        b2 = true;
        return (3);
    }
}
