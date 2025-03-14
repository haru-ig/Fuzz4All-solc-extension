pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample82 {
    uint[] public MyArray;
    function getArr() public view returns (uint[]) {
        return MyArray;
    }
    function add() public {
        for(uint i = 0; i < 3; i++) {
            MyArray[i] += 1;
        }
    }
}
