pragma solidity ^0.8.0;
contract MixedWithModifierEquivalence {
    modifier isNotMutated {
        assert(msg.value!= 0);
        _;
    }
    modifiers notMutated {
        require(msg.value == 0);
        _;
    }
    payable modifier hasNotZeroValue {
        require(msg.value!= 0);
        _;
    }
    receive() external payable notMutated notMutated
    {
        require(msg.value!= 0);
    }
    fallback() external hasNotZeroValue
    {
        message("fallback");
    }
}
