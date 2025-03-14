pragma solidity ^0.8.0;
contract SemanticDifferent4 {
    function callMe() public pure {
        SemanticDifferent5.mutate();
        SemanticDifferent5.mutate();
    }
}
contract SemanticDifferent3 {
    address payable public address_0 = payable(msg.sender);
}

pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    address payable public address_0 = payable(msg.sender);
    address payable public address_1 = payable(address_0);
}
contract SemanticDifferent1 {
    address payable public address_0 = payable(msg.sender);
    address payable public address_1 = payable(address_0);
}
contract SemanticDifferent0 {
    address payable public address_0 = payable(msg.sender);
}
