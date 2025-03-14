pragma solidity ^0.8.0;
contract MutatedDynamicArrays5 {
    uint256 y = 10;
    uint256 x = memory;
    function modify(uint256 _y) public {
        x = _y;
        x -= y;
        y -= _y;
        emit MyEvent(x,y);
    }
    event MyEvent(uint256 x,uint256 y);
}

contract ExampleContract {
    event MyEvent(uint256 x,uint256 y);
    MutatedDynamicArrays5 dynamicArrays;
    constructor() {
        dynamicArrays = new MutatedDynamicArrays5();
    }
    function useMe () public {
        dynamicArrays.modify(456);
    }
}
