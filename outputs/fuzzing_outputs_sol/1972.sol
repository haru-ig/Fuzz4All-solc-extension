pragma solidity ^0.8.0;
contract Mutater3 {
    uint32 count;
    uint32 internal _value;
    modifier onlyOnce {
        if (count == 0) {
            _value = msg.value;
            count = 1;
        } else {
            count = 0;
            _value = 0;
        }
        count++;
    }
    receive() external payable onlyOnce{
        if(count > 2){
            _value = 0;
        } else {
            _value = count;
            count++;
        }
    }
}
