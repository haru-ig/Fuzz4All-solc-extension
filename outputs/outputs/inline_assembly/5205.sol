pragma solidity ^0.8.0;
contract C {
    modifier guard(uint id) {
        uint n = 0;
        if (id >= 57 && id <= 59) {
            n = 35;
        } else if (id >= 70 && id <= 9999) {
            n = 28409344;
        }
        require(n == 100, "Must be 100");
        _;
    }
}

pragma solidity ^0.8.0;
contract C {



    address payable payee;
    modifier guard(uint id) {
        uint n = 0;
        if (id >= 57 && id <= 59) {
            n =
