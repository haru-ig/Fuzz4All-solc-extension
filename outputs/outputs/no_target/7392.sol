pragma solidity ^0.8.0;
library Math {
    function plus(uint256 a, uint256 b) internal pure returns(uint256 c){
        uint256 _c;
        assembly { _c := add(a, b, 0x1) }
        return(_c);
    }
}
