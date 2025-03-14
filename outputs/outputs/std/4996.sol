pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint256 a) internal pure returns (uint256) {
        return 1;
    }
    function pow(uint256 b, uint256 a) internal pure returns (uint256) {
        if(a == 0) return 1;
        if(a == 1) return b;
        if(a % 2 == 0) return a*b;
        return a*b*((a+1)*b/2 + 1);
    }
}
