pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 1;
    uint256 value2 = 2;
    address payable _address1;
    function increment() public {
        value1 = value1 + 1;
        value2 = value2 + 2;
    }
}
