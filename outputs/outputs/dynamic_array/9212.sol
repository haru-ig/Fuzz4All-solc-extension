pragma solidity ^0.8.0;
contract semanticEquivalent_b_copy_mutation {
    function semanticEquivalentMutation(
        address[](2,4))
    public
    returns(address)
    {
        address[](0,2) memory result = new address[](2);
        result = new address[0];
        return 0;
    }
}
