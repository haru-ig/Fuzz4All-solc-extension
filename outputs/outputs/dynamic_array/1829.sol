pragma solidity ^0.8.0;
contract SemanticallyEquivalentVariableNonFixedDynamicNonFixedSizeArrayWithNewMemoryStorage{
    struct ArrayMemory{
        ItemStruct items[10];
    }
    ArrayMemory public memoryStorage;
    ItemStruct public item;
    constructor() {
        item.member1 = 0;
        item.member2 = 0;
    }
    function MemoryList() public returns(uint) {
        item.member1 = 2;

        memoryStorage.items[0] = item;
        return item.member2;
    }
}
contract SemanticallyEquivalentVariableNonFixedDynamicNonFixedSizeArrayWithNewFixedStorage {
    struct Array{} memory storage;
    ItemStruct public item;
    constructor() {
        item.member1 = 0;
        item.member2 = 0;
    }
    function FixedMemoryList() public returns(uint) {
        item.member1 = 2;

        storage.items[0] = item;
        return item.member2;
    }
}
contract SemanticallyEquivalentNonFixedDynamicNonFixedSizeArrayWithAssignmentNestedMemory {
    struct ArrayMemory{
        Array storage1;
    }
    ArrayMemory public memoryStorage;
    Array public memoryStorage2;
