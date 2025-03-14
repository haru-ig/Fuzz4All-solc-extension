pragma solidity ^0.8.0;
contract MutatedEquivalenceContract {

    function add(uint256) private pure returns(uint256) {}
    function minus(uint256 ) private pure returns(uint256) {}
    function times(uint256) private pure returns(uint256) {}
    function divide(uint256) private pure returns(uint256) {}
}

pragma solidity ^0.8.0;
contract EqualEquivalenceContract {
    SemanticEquivalenceContract private eq;
    MutatedEquivalenceContract private eq2;

    constructor(SemanticEquivalenceContract _eq, MutatedEquivalenceContract _eq2) {
        eq = _eq;
        eq2 = _eq2;
    }

    function testAdd() internal view returns(uint256) {
        return eq.addWithSemantics(1, 1);
    }

    function testMinus() internal view returns(uint256) {
        return eq.minusWithSemantics(1, 1);
    }

    function testMultiply() internal view returns(uint256) {
        return eq.multiplyWithSemantics(1, 1);
    }


    function testEquality() internal view returns(uint256) {
        return eq.addWithSemantics(eq2.add(1), eq2);
    }
}
