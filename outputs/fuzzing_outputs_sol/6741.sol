pragma solidity ^0.8.0;
contract FallbackMutatorSemanticallyEquivalent {
    function Mut(uint a) public pure {
        require(a % 70 > 0, "a is not a mut");
        emit MutLog(a);
    }
    event MutLog(uint a);
}
contract MutatorExample {
    constructor() {}
    fallback function Mut(uint a) {
        require(a % 70 > 0, "a is not a mut");
        (bool success, ) = address(this).call{value: a}(abi.encodeWithSignature("Mut(uint256)", a));
        emit MutLog(a);
        require(success);
    }
    event MutLog(uint a);
}
