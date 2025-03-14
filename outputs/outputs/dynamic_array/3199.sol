pragma solidity ^0.8.0;
contract MutatedDynamicArray {
    uint[99][9] items;
    function mutate() public {
        items[40][70] = 6483;
        items[-52][130][0] = 21743776;
        items[20][30][0] = 217931543;
    }
}
