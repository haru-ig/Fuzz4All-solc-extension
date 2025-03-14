pragma solidity ^0.8.0;
contract EquivalentABIv08CompletelyDifferentInterface {
    function mintA () public { }
}
contract EquivalentABIv08SemanticallyDifferentImpl {
    uint public immutable version;
    uint public immutable versionTwo;
    constructor (uint _version) {
          version = version;
          versionTwo = versionTwo;
    }
    function mintA () public { }
}
contract EquivalentABIv08SemanticallyDifferentImplTwo {
    uint public immutable version;
    uint public immutable versionTwo;
    constructor (uint _version) {
          version = version;
          versionTwo = versionTwo;
    }
    function mintA () public { }
}
