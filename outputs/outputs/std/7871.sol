pragma solidity ^0.8.0;
contract Memory_SemanticallyEquivalentOld
{
    function write(uint64 a, address x) public writes ArrayStore.ArrayAccess.array_element arrayAccess {
        a++;
    }
}
function write(uint64 a, address x) public
{a++;}
contract ArrayStore {
    struct ArrayAccess {
        uint[5] array_element;
    }
}
