pragma solidity ^0.8.0;
contract RandomContract {
    address payable _contractOwner;
    constructor() {
        _contractOwner = msg.sender;
    }
    function setContractOwner(address payable newOwner) public {
        _contractOwner = newOwner;
    }
    function addOneToRandomArray(uint[] memory randomArray) internal pure {
        randomArray[_contractOwner]+=1;
    }
    function removeOneFromRandomArray(uint[] memory randomArray) internal pure {
        uint size = uint(randomArray.length);
        if (randomArray[size-1]!= 0) {
            randomArray[size-1] = 0;
        }
    }
    function calculateSum_uint2_uint2(uint x, uint y) internal pure returns (uint) {
        return _sum_uint_uint(x,y);
    }
    function getRandomInteger_uint() internal returns (uint) {
        return uint(uint8(keccak256(abi.encode(_contractOwner,_sum_uint_uint(uint8(uint8(now),now)),uint8(uint8(blockhash(blockhash(block.length-1)+blockhash(now)))+now))))))%(uint(2));
    }
    function getArrayAtIndex(uint[] memory randomArray, uint n) internal pure returns (uint) {
        return randomArray[n];
    }
    function setArrayAtIndex(uint[] memory randomArray, uint n, uint v) internal pure {
        randomArray[n]=v;
    }
}
