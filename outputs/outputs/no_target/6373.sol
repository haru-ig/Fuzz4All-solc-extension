pragma solidity ^0.8.0;
contract mutatedC {
    function f(uint8 a) public returns (uint256) {
        uint[10] memory arr;
        uint aValue = 1/(a+20);
        arr[0] = aValue;
        uint b =  arr[1];
        bool c = b==0;
        bool d = aValue==0x00;
        return d;
    }
}
