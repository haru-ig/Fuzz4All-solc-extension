pragma solidity ^0.8.0;
import "../../NotMutated.sol";


contract Complexity{
    uint8 private constant length = 4;

    uint8[length] public array;
    uint256[length] public sum;
    uint256[length] public minimalSum;
    uint256[length] public maximalSum;
    uint256 constant max = 2'000'000'000'000'000;
    uint8 constant min = 1;

    constructor(){
        array = new uint8[](length);
        for (uint8 i; i<length; i++){
            array[i] = uint8(keccak256("1234").toUint256(uint256Value));
        }
    }

    function checkSum(){
        uint256 sumOfArray = 1;
        for (uint8 i; i<length; i++) {
            sumOfArray = sumOfArray * array[i];
            array[i]= (sumOfArray > max);
            if(i == length - 1) {
                minimalSum[i] = sumOfArray;
            }
            if(array[i]) {
                maximalSum[i] = 1;
            }
        }
    }
    function keccak256(string memory _input) public pure returns (bytes32) {
        return keccak256(bytes(_input));
    }
    function uint256Value(uint256 _input){
        if(_input > max) {
            return uint8(keccak256(uint256.toUint8String(_input)));
        }
        else {
            return uint8(_input);
        }
    }
}
