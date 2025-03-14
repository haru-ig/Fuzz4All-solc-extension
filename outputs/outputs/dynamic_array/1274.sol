pragma solidity ^0.8.0;
contract StorageArrayTypesCheck {
    struct StorageArrayItem {
        uint8 a;
    }
    StorageArrayItem[] public a;

    constructor ()
    {
        a = new StorageArrayItem[](2);
        a[1].a = 2;
    }
    function storeArray() public {
        a.push(StorageArrayItem(10));
    }
}
