pragma solidity ^0.8.0;
contract Array2 {
    uint[] memory private a;
    constructor(uint[] memory data) {
        a = data;
    }
    function findMax() public pure returns(uint) {
        uint max = a[0];
        for(uint i = 0; i < a.length; i++) {
            if (a[i] > max) {
                max = a[i];
            }
        }
        return max;
    }
}
