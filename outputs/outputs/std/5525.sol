pragma solidity ^0.8.0;
contract Mutate {
    function test() public pure {}
}
contract Mutate2 {
    address ad;
    constructor(address ad) {
        ad = ad;
    }
    function test() public pure {}
}
contract Mutate3 {
    address ad;
    address ed;
    constructor(address ed, address ad) {
        ad = ad;
    }
    function test(address ad, address ed) public pure {}
 }
