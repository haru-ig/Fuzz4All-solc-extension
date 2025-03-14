pragma solidity ^0.8.0;
contract Mutate23{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test(address ad, address ed) public {
        ad = ad;
        ed = ed;
    }
}
