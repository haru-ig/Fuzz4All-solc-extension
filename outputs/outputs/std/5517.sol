pragma solidity ^0.8.0;
contract Mutate12 {
    address ad;
    uint256 i;
    constructor(address ad) {
        ad = ad;
        i = 0;
    }
    function test(address ad, uint256 i) public {
        ad = ad;
    }
}
