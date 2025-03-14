pragma solidity ^0.8.0;
library Mutant {
    function get(uint256) internal returns (uint256){
        uint256 a;
        uint256 b = uint256(keccak256(abi.encode(a, b)));
        uint256 c;
        uint256 d = uint256(keccak256(abi.encodePacked(a, b, c)));
        require(a == d);
        return b;
    }
}
