pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_mutatedAndRevertedCalls {
    function callTest01(uint8[] memory _list) public returns (uint8[] memory) {
        a[_list] = _list.length;
        return a;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_originalGenAndMutatedCall {
    uint8[] b;
    uint8[] internal a;
    function callTest01() public {
        emit CallEvent(1, 5);
        a = b;
    }
}
