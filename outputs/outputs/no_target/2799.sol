pragma solidity ^0.8.0;
contract old193{
    constructor(uint32 val)public{
        uint8 x = uint8(35863);
        if (true){
            uint8 y;
            assembly {
                let ptr := mload(0)
                y := mstore8(ptr, x)
                mstore8(ptr, y)
            }
        }
    }
}
