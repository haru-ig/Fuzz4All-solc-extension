pragma solidity ^0.8.0;
contract Mutate24{
    address public ad;
    address public ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test(address ad, address ed) public {
        ad = ad;
        ed = ed;
    }
}
