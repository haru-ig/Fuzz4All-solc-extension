pragma solidity ^0.8.0;
address payable smartContract1;
address payable smartContract2;
address payable smartContract3;
address payable smartContract4;
address payable smartContract5;
address payable smartContract6;
function semanticMutatedExample(address payable _addr) public {
        smartContract1 = _addr;
        address _contract = address(semanticMutatedGenericFunction());
        require(_contract.balance == 0, "SemanticMutatedExample::failed");
    }
    function semanticMutatedGenericFunction() public pure returns (address payable) {
        return smartContract1;
    }
}
