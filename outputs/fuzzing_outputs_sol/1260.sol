pragma solidity ^0.8.0;
contract ModifierEquivalenceMutated {
    modifier modifierOne {
        _;



    }
    modifier modifierTwo {

        _;
        _;
    }
}
