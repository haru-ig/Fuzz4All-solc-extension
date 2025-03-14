pragma solidity ^0.8.0;
contract DynamicArrayBug { address[] _addresses;
    function test() public returns (address[] memory) {
        uint256 len  = 500;

        while (true) {
            len --;
            _addresses.push(new address[](1));
            _addresses[len].push(0x01234567890xabcd);
        }
    }
}
