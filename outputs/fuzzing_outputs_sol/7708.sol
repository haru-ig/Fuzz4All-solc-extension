pragma solidity ^0.8.0;
contract MutatedSemantics {
    bool public canMutate = false;

    constructor() {
        canMutate = true;
        function() public { }
    }

    function setTrue() public onlyContractOwner { canMutate = true; }
    function setFalse() public onlyContractOwner { canMutate = false; }
    function _isMutated() public view returns (bool) { return canMutate; }
    receive() external { }
}
