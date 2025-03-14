pragma solidity ^0.8.0;
contract Test67 {
    struct S1 { uint256 x; }
    uint256[] public a;
    function f() public {
        a = [S1(0)];
    }
}
