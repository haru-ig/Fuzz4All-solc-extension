pragma solidity ^0.8.0;
contract MutatedExampleContract {

    function getSum2(uint16 x) public pure returns (uint256){
        uint256 sum = 0;
        for(uint16 i = 0; i < 32767; i++){
            uint256 x1 = (x + (uint16(32767) / 32767 * i - uint16(5) + 256)) % 1 << 8;
            sum += getSum(x1);
        }
        return sum % 1016;
    }
}
