pragma solidity ^0.8.0;
contract Mutate25{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test() public {
        this.test(ad, ad);
    }
    function test(address ad, address ed) public {
        ad = ad;
        if (ed == ad) {
            ed = ed;
            if (ed == ed) {
                this.test(ad, ed);
                return;
            }
        }
    }
}
