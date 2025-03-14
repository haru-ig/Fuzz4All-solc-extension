pragma solidity ^0.8.0;
abstract contract Mutate2 {
    constructor() {
        require(address(0) == address(ad));
    }
}
abstract contract Mutate3 {
    address ad = address(ad);
    address ed = address(ad);
    event e(uint a, uint b);
    constructor() {
        e(1, 1);
    }
    function test(address ad) public{
        require(0!= ad);
        require(0 == ed);
        require(0 == ad);
        ad = ad;
        ad = ed;
    }
}
