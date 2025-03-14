pragma solidity ^0.8.0;
contract SemanticDifferent10 {
    function mutate() public pure {
        emit MySignatureEvent();
    }

    receive() external payable pure {
     emit MySignatureEvent();
    }
}

pragma solidity ^0.8.0;
contract SemanticDifferent11 {
    function mutate() public pure {
        MySignatureEvent();
    }
}



pragma solidity ^0.8.0;
contract SemanticDifferent14 {
    function mutate() public pure {
        emit (bytes1, uint());
    }
}
