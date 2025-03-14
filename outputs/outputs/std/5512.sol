pragma solidity ^0.8.0;
contract Mutate11 {
    address ad;
    address ed;
    constructor(address ad) {
        ad = ad;
    }
    function test(address ad, address ed) public {
        ed = ed;
    }
}
