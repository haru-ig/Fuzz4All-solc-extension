pragma solidity ^0.8.0;
contract Mutate6 {
    function mutateFromFirst(uint256(2, 2) memory array) public pure returns (uint256, bool) {
        (bool done, uint256 sum) = Array.findMinAndSum(array.data);
        return (sum, done);
    }
    function mutateFromSecond(uint256(2, 2) memory array) public pure returns (uint256, bool){
        (uint256 sum, bool done) = Array.findMinAndSum(array.data);
        return (sum, done);
    }
    function mutateFromThird(uint256(2, 2) memory array) public pure returns (uint256, bool) {
        (uint256 sum, bool done) = Array.findMinAndSum(array.data);
    }
    function mutateFromFourth(uint256(2, 2) memory array) public pure returns(uint256, bool) {
        (uint256 sum, bool done) = Array.findMinAndSum(array.data);
    }
}
