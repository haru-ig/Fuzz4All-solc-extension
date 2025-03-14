pragma solidity ^0.8.0;
contract Mutate23 {
    address ed;
    address ad;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function mutate(address ad, address ed) public {
        ad = ad;
    }
}
contract Mutate24 {
    address ed;
    address ad;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function testMutate24(address ad, address ed) public {
        address a = address(uint(ad));
        address b = address(uint(ad));
        ad = a;
        ed = b;
    }
}
