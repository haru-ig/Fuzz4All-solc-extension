pragma solidity ^0.8.0;
contract ModifierEquivalenceMutated {
        receive() payable external {
        }
}

contract ModifierEquivalenceMutated {
    fallback() private {
    }

    receive() payable private {
    }
}
