pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_callDataArrays_Mutated {
    using EnumerableSet from "./EnumerableSet.sol";
    using EnumerableMap from "./EnumerableMap.sol";
    string s;
    EnumerableSet<uint> memory x = EnumerableSet.of(1, 2);
    uint256 internal y;
    Mapping(uint => uint) indexMapping;
    function setIndexMapping(uint key, uint value)
        public
    {
        indexMapping[key] = value;
    }
}
