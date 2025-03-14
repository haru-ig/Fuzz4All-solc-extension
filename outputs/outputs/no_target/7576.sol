pragma solidity ^0.8.0;
contract ContractWithNewModifierCheck {
    modifier valid(uint32 input) {
        require(true);
        _;
    }
    function method() public pure valid(3) {
    }
}<jupyter_output><empty_output><jupyter_text>The first error is due to the incorrect usage of `````require(```` instead of `````require (`````, ````` or ````` require()````````<jupyter_code>
pragma solidity ^0.8.0;
contract ContractWithRevertedModifierCheck {
    modifier non_reverted(uint32 input) {
        require(true);
        _;
    }
    function method() public non_reverted(3) {
    }
}<jupyter_output><empty_output>
