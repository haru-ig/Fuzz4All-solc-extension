pragma solidity ^0.8.0;
contract Caller {
    function fallback() public payable {
    }
}

contract ShortExample {
    byte56[1] constant myContract = "0xdb2632146f85180000";
    address contractAddr = address(uint256(uint256.decode(bytes(myContract))));
    function fallback() public payable {
        contractAddr.call{value: msg.value}(msg.data);
    }
}
contract ShortExample2 {
    byte56[1] constant myContract = "0xdb2632146f85180000";
    address contractAddr = address(uint256(uint256.decode(bytes(myContract.sub(bytes("0xdb2632146f85180000"))))));
    function fallback() public payable {
        contractAddr.call{value: msg.value}(msg.data);
    }
}
contract SemanticEquivalent {
    address[] memory addresses;
    function setAddresses(address[] memory addrs) public {
        addresses = addrs;
    }
    function simpleCall() public {
        address toAddr = addresses[keccak256(abi.encodePacked(msg.sender.toEthSignedMessageHash()))];
        toAddr.send{value: 1 ether}(msg.data);
    }
}
