pragma solidity ^0.8.0;
contract A {
    uint public names;
    uint public namelength;
    constructor() {
        if (A.set(26)) {
            namelength = A.getlength();
        }
    }
    function getlength() private view returns (uint l) {
        return l;
    }
}
