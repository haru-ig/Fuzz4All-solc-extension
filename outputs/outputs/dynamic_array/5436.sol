pragma solidity ^0.8.0;
interface Interface {
    function changeReturn(uint[10] arr3) external;
}
contract Test38 {
    uint[10] arrA;
    uint[10] returnArrB;
    function logEvent() public {
        uint[10] _arrB = returnArrB;
        Interface(0x859401234a).changeReturn(_arrB);
    }
}
