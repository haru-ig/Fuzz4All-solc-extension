pragma solidity ^0.8.0;
contract Mutate35{
    address ad;
    address ed;
    uint256 x;
    uint[21] y;
    uint[21] z;
    constructor(address ad, address ed, uint[21] xn, uint[21] yn, uint[21] zn) {
        ad = ad;
        ed = ed;
        x = xn;
        z = zn;
    }
    function test() public {
        ad = ad;
        x = x;
        if (ed == ad) {
            ed = ed;
            if (ed == ed) {
                return;
            }
        }
    }
}
