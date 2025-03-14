pragma solidity ^0.8.0;
contract TestFallback4
{
    address public owner;
    uint256 public v;
    constructor(uint256 z) {
        owner = msg.sender;
        v = z;
    }
    function f() public
    {
        uint256 a1;
        assembly {
            switch v
        case 0 { a1 := 0 }
        case 1 { a1 := 1 }
        default { a1 := 2 } }
        require(a1 == 0);
    }
    function e() public
    {
        TestFallback4 f1;
        f1.v++;
    }
}
