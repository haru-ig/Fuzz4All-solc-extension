pragma solidity ^0.8.0;
contract Mutate21 {
    address ad;
    address ed;
    constructor(address ad) {
        ad = ad;
    }
    function test(address ad, address ed) public {

        ad = ad;
    }
}

pragma solidity ^0.8.0;
contract Mutate22 {
    address ed;
    address ad;
    constructor(address ed, address ad) {
        ed = ed;
        ad = ad;
    }
    function test(address ed, address ad) public {

        address ad = ad;
    }
}
