pragma solidity ^0.8.0;
contract Mutated18 {
    uint[5] public a;
    function setA(uint[] memory b) public {
        a = b;
    }
}
contract EquivalentMutated18_NoUpgradeSafeMath18 {
    uint[5] a;
}

pragma solidity ^0.8.0;
contract Mutated18_NoUpgradeSafeMath18 {
    uint[5] public a;
    function setA(uint[] memory b) public {
        a = b;
    }
}
