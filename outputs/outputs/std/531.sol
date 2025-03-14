pragma solidity ^0.8.0;

contract ArrayMutated {
    using IERC712 for IERC712.Address;
    address public owner;
    uint public number;

    constructor() {
        owner = msg.sender;
    }


    function mutateArray() external {
        address myArrayAddress = address(uint160(uint256(address(this)))));


        uint160[] memory newArray = new uint160[](2);
        newArray[0] = 99;
        newArray[1] = 999;
        bytes32 myArrayHash = keccak256(abi.encodePacked(newArray));
        myArrayHash.transfer(msg.sender);

    }
}
