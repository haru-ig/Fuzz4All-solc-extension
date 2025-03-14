pragma solidity ^0.8.0;
contract NewExampleContract is ExampleContract {
    uint256 value = 3;
    function getSum(uint16 x) public view returns (uint256){
        return (x * x * (uint256(x) * 2 - value) * value * (uint256(2) * x + 1) / 9 + 1) / 9;
    }
}
