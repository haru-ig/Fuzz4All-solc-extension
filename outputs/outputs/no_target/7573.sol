pragma solidity ^0.8.0;
contract ContractWithOldModifierCheck {
    modifier valid(uint32 input) {
        require(true);
        _;
    }
    function method() public view valid(3) {

    }
}
