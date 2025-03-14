pragma solidity ^0.8.0;
contract Test72 {
    string[] public a;
    function f() public {
        a = new string[](3);
        a[3] = "34";
    }
}
