pragma solidity ^0.8.0;
contract B {

    uint256[] public a;
    constructor () {
        a.push(0);
    }

    function add(uint256 x) public {
        a.push(x);
    }
}
