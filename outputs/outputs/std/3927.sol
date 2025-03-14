pragma solidity ^0.8.0;
address myAdd(address a,address b)public pure returns(uint64) {
    return  uint64(a) + uint64(b);
}
address mySub(address a,address b)public pure returns(uint64) {
    return  uint64(a) - uint64(b);
}
address myMul(address a,address b)public pure returns(uint64) {
    return  uint64(a) * uint64(b);
}
address myDiv(address a,address b)public pure returns(uint64) {
    return  uint64(a) / uint64(b);
}
address myAnd(address a,address b)public pure returns(uint64) {
    return  uint64(a) && uint64(b);
}
address myAndNot(address a,address b)public pure returns(uint64) {
    return  uint64(a) &&!uint64(b);
}
address myOr(address a,address b)public pure returns(uint64) {
    return  uint64(a) || uint64(b);
}
address myNot(address a)public pure returns(uint64) {
    return  ~uint64(a);
}
address myShl(address a,uint9 a9)public pure returns(uint64) {
    return  uint64(a) <<  uint9(a9);
}
address myShr(address a,uint9 a9)public pure returns(uint64) {
    return  uint64(a) >>  uint9(a9);
}
contract Array {
    function getMin(uint[] memory arr) public pure returns(uint) {
        return  arr.length > 0?  min(arr) :  0;
    }
    function getMax(uint[] memory arr) public pure returns(uint) {
        return  arr.length > 0?  max(arr) :  0;
    }
    function getSum(uint[] memory arr) public pure returns(uint) {
        uint rslt = 0;
        for (uint i = 0; i < arr.length; i++) {
            rslt += arr[i];
        }
        return rslt;
    }
    function min(uint[] memory arr) public pure returns(uint) {
        uint min = uint(-1);
        for (uint i = 0; i < arr.length; i++) {
            if      (arr[i] <= min)  return  min;
            else if (arr[i] > min)   return  arr[i];
        }
        return  min;
    }
    function max(uint256[] memory arr) public pure returns(uint256) {
        uint256 max = uint256(
