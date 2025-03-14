pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutation{
    bytes32 constant SEVERAL = "SEMICAL EQUIVALENT FALLBACK";

    function isSemanticallyEquivalent(bytes32 data) public pure returns (bool) {
        return (data == SEVERAL);
    }

    fallback() public view returns (bytes32){
        return SEVERAL;
    }
}
