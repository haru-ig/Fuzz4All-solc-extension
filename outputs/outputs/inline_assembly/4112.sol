pragma solidity ^0.8.0;
contract Ownable {
    address owner;
    constructor (address owner_) {
        owner = owner_;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function takeOwnership() public onlyOwner {
        bytes memory code;

        assembly {
            code := mload(0x40)

            mstore(0x40, add(code, 0x20, jumpi(code, 5, sub(code, 0x20, 5))))

            jumpi(code, 5, sub(code, 0x20, 5))
        }
    }
}
