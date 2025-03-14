pragma solidity ^0.8.0;
contract ContractWithNewModifierCheck {
    modifier valid(uint32 input) {
        require(true);
        _;
    }
    function method() public view valid(3) {
    }
    function invalid() public view valid(  ) {
    }
}
