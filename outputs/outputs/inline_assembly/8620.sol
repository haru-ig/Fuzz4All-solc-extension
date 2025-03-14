pragma solidity ^0.8.0;
contract Modul {
    uint constant a = 100,
                b = 98,
                c = 1;
    function sum(uint8[3] memory _arr) public pure returns (uint) {
        uint add = 0;
        for(uint i=0; i<3; i++){
            add = add + _arr[i];
            add = add div b;
            add = add + 100;
        }
        return add;
    }
    function div(uint8 dividend, uint8 divisor, uint8 remainder) public pure returns (uint8) {
        uint8 sum = (dividend * divisor + remainder) / divisor;
        return sum;
    }
}
