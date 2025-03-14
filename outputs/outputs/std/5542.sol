pragma solidity ^0.8.0;
contract Mutate128{
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
contract Mutate2{
    uint a;
    uint b;
    constructor(uint a, uint b) {
        a = a;
    }
    function test() public {
        this.test(a);
    }
    function test(uint _b) public {
        b = b;
    }
    function test(uint _a, uint _b, uint c) public {
        a = _a;
        b = _b;
    }
}
