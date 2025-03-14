pragma solidity ^0.8.0;
contract mutantSolidityCheck {
    function solidityCheck() view internal returns (uint) {
        bool b = false;
        return 2 * b;
    }
}
