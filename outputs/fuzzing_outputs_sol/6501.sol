pragma solidity ^0.8.0;
contract M {
    function bar() public {
        moo(moo);
    }
    function moo(string memory s) public {}
}
