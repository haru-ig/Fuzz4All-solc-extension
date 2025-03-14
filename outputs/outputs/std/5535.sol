pragma solidity ^0.8.0;
contract Mutate25{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test(address ad, address ed) public {
        ad = ad;
        if (ed == ad) {
            ed = ed;
            this.test(ad, ad);
            return;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutate26{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test(address ad, address ed) public {
        if (ed == ad) {
            ed = ed;
            return;
        }
        ad = ad;
        return;
    }
}

pragma solidity ^0.8.0;
contract Mutate27{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test(address ad, address ed) public {
        ad = ad;
        if (ed == ad) {
            ed = ed;
            return;
        }
        if (ad <= 1 && ed <= 2) {
            ed = 0;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutate28{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test(address ad, address ed) public {
        ad = ad;
        if (ad <= ad) {
            ad = ad;
            if (ad <= ad) {
                ad = ad;
                return;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract Mutate29{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test(address ad, address ed) public {
        ad = ad;
        if (ad!= ad) {
            ad = ad;
            return;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutate30{
    address ad;
    address ed;
    function test(address ad, address ed) public {
        ad = ad;
        if (ed!= ad) {
            ad = ad;
            if (ed!= ad) {
                ad = ad
