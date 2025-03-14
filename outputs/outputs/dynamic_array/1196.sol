pragma solidity ^0.8.0;
contract A {
    uint[] public accounts_ = [4];

    function A(uint elem, uint[] memory accounts) public {
        for (uint256 i = 0; i < accounts.length; i++) {
            accounts_ = accounts;
        }

        accounts = accounts_;
        accounts_[2] = 8;
    }
}
