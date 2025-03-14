pragma solidity ^0.8.0;
contract ModifiesDynamicArray {
    uint[99][9] items;
    function() public {
        items[1] = 155;
    }
    function getItems() public view returns(uint[99][9] memory) {
        return items;
    }
}
 <fim_middle>contract ModifiesDynamicArrayNoOp {
    uint[99][9] items;
    function() public {
        items[53] = 155;
    }
    function getItems() public view returns(uint[99][9] memory) {
        return items;
    }
}
