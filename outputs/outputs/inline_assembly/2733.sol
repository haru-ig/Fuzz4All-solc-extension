pragma solidity ^0.8.0;
contract B is A {
    uint public names;
    uint namelength;
    function getlength() private view returns (uint l) {
        return A.getlength();
    }
}
