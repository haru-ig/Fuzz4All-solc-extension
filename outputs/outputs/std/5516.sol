pragma solidity ^0.8.0;
contract Mutate12 {
    address ad;
    address ed;
    address oad;
    address oead;
    address oed;
    constructor(address ad) {
        ad = ad;
    }
    function test(address ad, address ed, address oad, address oead, address oed) public {
        ed = ed;
        oad = oad;
        oead = oead;
    }
}
