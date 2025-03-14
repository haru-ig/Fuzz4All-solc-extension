pragma solidity ^0.8.0;
contract Mutate30{
    address ad;
    address ed;
    uint256 x;
    int[21] y;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test() public {
        ad = ad;
        if (ed == ad) {
            ed = ed;
            if (ed == ed) {
                this.test();
                return;
            }
        }
    }
}
