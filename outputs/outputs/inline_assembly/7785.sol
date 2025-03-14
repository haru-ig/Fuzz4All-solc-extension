pragma solidity ^0.8.0;
contract L13 {
    function myFunc() public {
        uint x;
        uint y;
        uint z;
        bytes memory memoryStr;
        uint8 memoryStr1;
        uint96 memoryStr2;
		bytes memory memoryStr3;
        assembly {
            x := 2 << 256
            y := x
            z := x
            memoryStr := 'Hello'
            memoryStr1 := x
            memoryStr2 := x
            memoryStr3 := z
        }
    }
}
