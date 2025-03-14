pragma solidity ^0.8.0;
contract C {
    address owner;
    function f() public returns (bool) { return true; }
}
pragma solidity ^0.8.0;
contract B {
    address owner;
    uint num;
    uint num2 = 1;
    function f() public { num = 1; }
}
contract A {
    uint counter = 1;
    contract C { uint counter; }
    event BEvent(uint256 x);
    function f() public { contract C{  } emit BEvent(); }
}
