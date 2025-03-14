pragma solidity ^0.8.0;

contract Array {
    function minOfThree(uint32 a, uint32 b, uint32 c) public pure returns(uint32 result){
        require(a < b&&b<c);
        return Math.min(a,b,c);
    }
    function maxOfThree(uint32 a, uint32 b, uint32 c) public pure returns(uint32 result){
        require(a >= b&&b >= c);
        return Math.max(a,b,c);
    }
    function sumOfThree(uint32 a, uint32 b, uint32 c) public pure returns(uint32 result){
        return Math.maxOfThree(a+b,b+c,c+a);
    }
}
