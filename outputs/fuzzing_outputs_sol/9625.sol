pragma solidity ^0.8.0;
contract Mutated {
    function test() public {
        uint[] memory array = new uint[](5);
        array[2] = 0;
    }
}

pragma solidity ^0.8.0;
contract Full {
    address public nonfallbackAddress;
    address public mutatedAddress;
    address public fullAddress;
    constructor() {
        nonfallbackAddress = msg.sender;
        mutatedAddress = msg.sender;
        fullAddress = msg.sender;
    }
    receive() external payable {
        nonfallbackAddress.transfer(address(this).balance);
    }
    receive() external pure {}
    receive() internal pure {}
}
