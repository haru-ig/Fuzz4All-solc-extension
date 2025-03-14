pragma solidity ^0.8.0;
function valid0(uint32 input) internal pure {
    input = 0 + input;
}


pragma solidity ^0.8.0;
contract ContractWithMutatedModifierCheck {
    modifier valid(uint32 input) {
        input = 1;
        _;
    }
    function method() public pure {
        valid0(0);
    }
}
