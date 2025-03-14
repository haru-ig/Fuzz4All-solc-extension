pragma solidity ^0.8.0;
contract Test4 {
    address[] public arr;
    constructor() {
        arr = new address[](1);
        arr[0] = address(0xFFFFFFFFFFFFFFFFFFF);
        arr[1] = address(0x00000000000000000000000000000000000000000000000000000000000000000000);
    }
    address setArr2(bool b) public {
        uint index = 1;
        if (b) {
            set(index);
        } else {
            unset(index);
        }
    }
    function set(uint index) public {
        arr[index] = address(0);
    }
    function unset(uint index) public {
        arr[index] = address(0xffffffffffffffffffffffffff);
    }
}
