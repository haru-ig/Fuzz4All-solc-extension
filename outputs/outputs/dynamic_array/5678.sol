pragma solidity ^0.8.0;
contract Test78 {
    uint[5] public arr;
    function Test78() {}
    function Test78(uint val) public {
        arr[0] = val;
    }
}
contract Test79 {
    uint[5] public arr;
    function Test79() {}
    function Test79(uint val) public {
        assembly {
            let _ptr := mload(0)
            mstore(0,add(_ptr,mul(0x10,0x40)))
            mstore8(sub(_ptr,0x40),0xab)
            mstore8(add(_ptr,0x40),0xcd)
        }
        arr[0] = val;
    }
}
