pragma solidity ^0.8.0;
contract Fallback {
    bytes32[] public names;
    bool public isRegistered;

    function addName(bytes32 memory name) public {
        if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("fallback"))) {
            return;
        }
        names.push(name);
    }

    function test() public {
        if (!isRegistered) {
            fallback();
        } else {
            fallback();
        }
    }

    fallback() external payable {
        _;
    }
}
