pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidity26_fixed_9 {
    uint256[9] public m;
    mutant mutant = new mutant();
    mutant m2;

    function _get_mutant() public view returns(mutant){
        return this;
    }

}
