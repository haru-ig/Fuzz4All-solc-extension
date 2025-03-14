pragma solidity ^0.8.0;
contract Nondeterminism {
    uint x1;
    uint y1;
    uint x2;
    uint y2;
    function f() public {
        y1 = (uint256(address(this)) ^ (uint(0x3E804456F3B5BA86D3A88881E94C9CA972EEF62E))) + 1;
        x2 = x1 * 2;
        x1 = x2;
        x2 = (x1 + (uint256(address(this))) ^ (uint(0x3E804456F3B5BA86D3A88881E94C9CA972EEF62E))) + 1;
        x1 = x2;
        y2 = (uint256(address(this)) + (uint(0x3E804456F3B5BA86D3A88881E94C9CA972EEF62E))) + 1;
    }
}
