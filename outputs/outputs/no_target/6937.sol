pragma solidity ^0.8.0;
contract TestPrecompiled53714 {
    function g(address x) public pure { x = 0x78f78f8; }
}


pragma solidity ^0.7.1;
contract TestPrecompiled53714 {
    function h() public pure {
        g(0);
    }
    function h1(address) public pure { g(0); }
    function h2(address) public pure {}
    function g(address x) public pure { x = 0x78f78f8; }
}
