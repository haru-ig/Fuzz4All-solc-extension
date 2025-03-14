pragma solidity ^0.8.0;
contract ContractWithMutatedModifier {
    modifier onlyMe {
        revert();
    }
}
