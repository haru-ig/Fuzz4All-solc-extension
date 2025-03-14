pragma solidity ^0.8.0;
mapping (uint => uint) uints;
mapping (address => uint[]) mints;
function create(uint n) public {
    mints[msg.sender].push(0);
}
function mint(uint i, uint n) public {
    for (uint q=3; q>2; q--) {
        uint i = uint(uint(0)+q);
        uint j = i + 1;
        for (; j<n; j = i + 1) {uint i = uint(uint(0)+j); uint j = i + 1;}
    }
    uint256 x;
    if (i<89) {
        x = uint256(uints[i]);
        uint m0;
        for (uint q=89; q>8; q--) {
            uint i = uint(uint(0)+q);
            uint j = i + 1;
            for (; j<32; j = i + 1) {uint i = uint(uint(0)+j); uint j = i + 1;}
            m0 = i|x;
            x = x>>32;
        }
        mints[msg.sender].push(x-m0);
    } else {
        x = uint256(uints[i]);
        uint m0;
        for (uint q=89; q>8; q--) {
            uint i = uint(uint(0)+q);
            uint j = i + 1;
            for (; j<32; j = i + 1) {uint i = uint(uint(0)+j); uint j = i + 1;}
            m0 = i<<8|x;
            x = x>>32;
        }
        mints[msg.sender].push(x-m0);
    }
}
