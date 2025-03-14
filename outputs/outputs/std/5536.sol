pragma solidity ^0.8.0;
contract Mutate24 {
    address ad;
    address ed;
    constructor(address ad, address ed){
        ad = ad;
        ed =ed;
    }
    function test(address ad, address ed) public {
        if(ad!= ad){
            ad = ad;
            if (ed == ad) {
                ed = ed;
                if(ed == ed){
                    this.test(ad, ed);
                    return;
                }
                this.test(ad, ed);
                return;
            }
        }
    }
}
