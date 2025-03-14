pragma solidity ^0.8.0;
contract ExampleContract {
    function getSum(uint16 x) public pure returns (uint256){
        return (x * x * (uint256(x) - 1) * (uint256(2) * x + 1) / 6 + 1) / 6;
    }
}
