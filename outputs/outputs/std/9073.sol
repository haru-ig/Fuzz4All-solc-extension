pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 1;
    uint256 value2 = 2;
    address payable _address1;
    function getSum(uint16 x) public view returns (uint256){
        return (x * x * (uint256(x) - 1) * (uint256(2) * x + 1) / 6 + 1) / 6;
    }
}
