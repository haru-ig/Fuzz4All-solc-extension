pragma solidity ^0.8.0;
contract ExampleLibrary {

    uint256 constant public TWOPOWERuint256;
    uint256 constant public ONEPOWERuint256;
    uint256 constant public MIN_SAFE_INTEGERuint256;
    function getSum(uint16 x) public pure returns (uint256){
        return 2 ** 16 + x - 1;
     }
}
