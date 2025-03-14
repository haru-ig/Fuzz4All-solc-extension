pragma solidity ^0.8.0;
interface Reentrancy {
    function test() external;
}
contract Mutate1 {
    address ad;
    address ed;
    constructor(address ad) {
        ad = ad;
        ed = ed;
        Reentrancy(ad).test();
        Mutate(ae).test();
        Mutate(ee).test();
    }
    function test(address ad, address ed) public {
        ed = ed;
    }
}
