pragma solidity ^0.8.0;
contract C {
    uint256[10] public zeroValues;
    function getZero() public pure returns(uint256[] memory){
        return [
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0
        ];
    }
}
