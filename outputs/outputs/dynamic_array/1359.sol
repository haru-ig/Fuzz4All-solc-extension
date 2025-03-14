pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck7 {

    struct ArrayItem { uint b; }

    function ArrayAssignmentNonConstantSize8 (
        uint aCount,
        uint[] memory a)
        public pure
    {
        require(aCount <= 10);
        array[0] = 10;
    }
    function ArrayAssignmentConstantSize9 (
        uint aCount,
        uint[] memory a)
        public pure
    {
        require(aCount < 10);
        array[0] = 10;
    }
}
contract MutatedEquivalentMutatedDynamicArrayTypeCheck8 {
    uint a = 0;
    mapping (address => address) balances;
    function mutatedArrayAssignmentNonConstantSize10 (uint aCount, address[] memory a) public {
        a[0] = a;
    }
    function mutatedArrayAssignmentConstantSize11 (uint aCount, address[] memory a) public {
        a[0] = a;
    }
}
contract MutatedEquivalentMutatedDynamicArrayTypeCheck9 {
    mapping (address => address) balances;
    uint[] data;
    function mutatedArrayAssignmentNonConstantSize9 (uint aCount, uint[] memory a) public {
        data = a;
    }
    function mutatedArrayAssignmentConstantSize10 (uint aCount, uint[] memory a) public {
        data = a;
    }
}
contract MutatedEquivalentMutatedDynamicArrayTypeCheck10 {
    mapping (address => address) balances;
    mapping (address => uint) mapBalance;
    function mutatedArrayAssignmentNonConstantSize14 (uint aCount, uint[] memory mapBalances) public {
        require(aCount <= uint32(mapBalance.length));
        mapBalance[a] = 0;
    }
    function mutatedArrayAssignmentConstantSize15 (uint aCount, uint[] memory mapBalances) public {
        require(aCount < uint32(mapBalance.length));
        mapBalance[a] = 0;
    }
}
contract MutatedEquivalentMutatedDynamicArrayTypeCheck11 {
    mapping (uint => uint) mapNumber;
    uint[] array;
    function mutatedArrayAssignmentNonConstantSize12 (uint aCount, uint[] memory a
