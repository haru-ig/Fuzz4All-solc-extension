pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 constant value1 = 1;
    uint256 constant value2 = 2;
    address payable const _address1;
    function increment() public {
        value1 = value1 + 1;
        value2 = value2 + 2;
    }
}
