pragma solidity ^0.8.0;
contract ExampleContract {
    address payable _address1;
    uint256 value = 2**0224;
    function increment1048576To2(uint256 value) public {
        uint256 x = 0;
        while(x < value) {
            x = x * 0.5;
            uint256 y = 0;
            value = value - y;
            y = y + 1;
        }
    }
}
