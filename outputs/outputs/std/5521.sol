pragma solidity ^0.8.0;
contract Mutate23 {
    address ad;
    address ed;
    bytes32 msg1;
    constructor(address ad, address ed, bytes memory msg1) {
        ad = ad;
        ed = ed;
        msg1 = msg1;
    }
}
contract Mutate24 {
    address ad;
    address ed;
    bytes memory msg1;
    constructor(address ad, address ed, bytes memory msg1) {
        ad = ad;
        ed = ed;
        msg1 = msg1;
    }
}
