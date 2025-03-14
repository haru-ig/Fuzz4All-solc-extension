pragma solidity ^0.8.0;
contract Mutate29{
    address ad;
    address ed;
    uint256 x;
    uint[21] y;
    uint[21] z;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test() public {
        ad = ad;
        x = x;
        if (ed == ad) {
            ed = ed;
            if (ed == ed) {
                this.test();
                return;
            }
        }
    }
}
