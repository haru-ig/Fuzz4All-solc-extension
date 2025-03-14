pragma solidity ^0.8.0;
contract Mutate26{
    address a1;
    address b1;
    address a2;
    address ed;
    uint256 d;
    constructor(address ad, address bd, address ed, uint256 d) {
        a1 = ad;
        b1 = bd;
        if (ed == bd) {
            ed = ad;
            if (ed == ad) {
                this.test(bd, ad);
                return;
            }
        }
    }
    function test() public {
        this.test(a1, a1);
    }
    function test(address a, address b) public {
        a2 = a;
        b1 = b;
        a1 = a;
        if (b1 == b) {
            ed = b1 + 1;
        }
    }
}
