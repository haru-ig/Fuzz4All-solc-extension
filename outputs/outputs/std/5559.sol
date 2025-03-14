pragma solidity ^0.8.0;
contract Mutate44{
        address ad;
        address ed;
        uint256 x;
        bool[256] y;
        bool[256] z;
        constructor(address ad, address ed) {
            ad = ad;
            ed = ed;
            x = x;
            y[255] = x;
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

pragma solidity ^0.8.0;
contract Mutate57{
    address ad;
    address ed;
    uint256 x;
    bytes[96] y;
    uint[96] z;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
        delete y;
        if (ed == ad) {
            ed = ed;
            if (ed == ed) {
                this.test();
                return;
            }
        }
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
