pragma solidity ^0.8.0;
contract Completely {
    uint public x;
}
pragma solidity ^0.5.0;
contract Reentrancy {
    bool public s = true;
    function f() public{
        s =!s;
    }
