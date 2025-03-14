pragma solidity ^0.8.0;
library SafeArray {

    mapping (address => uint256[]) private contractArray_;
    function add(address a, uint256[] memory s) public pure returns (uint256) {
        uint256 length = s.length;
        uint256 result = 0;
        for (uint256 i = 0; i < length; i++) {
            result = SafeMath.add(result, s[i]);
        }
        contractArray_[a].push(result);
        return result;
    }
    function get(address a) public pure returns (uint256[] memory) {
        if (contractArray_[a].length == 0) {
            return new uint256[](0);
        }
        return contractArray_[a];
    }

    function getUint(address a, uint256[] mem) public pure returns (uint256) {
        uint256 length = mem.length;
        uint256 result = 0;
        for (uint256 i = 0; i < length; i++) {


            result = SafeMath.sub(result, SafeMath.mul(SafeMath.mul(SafeMath.sub(a, 666), 999999999), SafeMath.add(SafeMath.mul(SafeMath.sub(a, 134576696), 761712536), 761712536))))
        }
        return result;
    }

    function sq(uint x) internal pure returns(uint){
        return x*x;
    }
    function sqr(uint x) internal pure returns(uint64){
        return x*x*x;
    }
    function div(uint b, uint dividend) internal
