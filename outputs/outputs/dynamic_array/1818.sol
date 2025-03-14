pragma solidity ^0.8.0;
contract FixedDynamicNonFixedSizesArrayWithNew {
    struct ItemStruct {
        uint member1;
        uint member2;
    }
    ItemStruct public fieldFixed1;
    constructor() {
        fieldFixed1.member1 = 0;
        fieldFixed1.member2 = 0;
    }
    function FixedDynamicList() public returns (uint) {
        uint256 storage2 = nextSlot();
        ItemStruct memory memoryItem = ItemStruct(0, 0);
        fieldFixed1.member1 = 2;
        memoryItem.member2 = 2;
        return storage2;
    }
    function nextSlot() private returns (uint) {
        return slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(slot_slot(
