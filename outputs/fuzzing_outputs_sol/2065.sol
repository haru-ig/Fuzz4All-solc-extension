pragma solidity ^0.8.0;
contract Mutater4 is Mutater3 {
}


pragma solidity ^0.8.0;
contract Mutater5 is Mutater4 {
    constructor(address _address) {
        contractAddress = _address;
        contractAddress=address(new Mutater2());
        bytes32 immutable _hash = keccak256(abi.encode(bytes4(ecrecover), msg.sender, 0, 0, 0));
        abi.encodePacked(abi.encode(msg.sender, _hash));
    }
}
contract Mutater6 is Mutater3 {
    constructor(address _address) {
        contractAddress = _address;
        contractAddress=address(new Mutater7());
    }
}
contract Mutater7 is Mutater4 {
    constructor(address _address) {
        contractAddress = _address;
        contractAddress=address(new Mutater8());
    }
}
contract Mutater8 is Mutater3 {
    constructor(address _address) {
        contractAddress = _address;
        contractAddress=address(new Mutater9());
    }
}
contract Mutater9 {
    address public contractAddress;
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    constructor(address _address1) {
        setContractAddress(_address1);
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function fallback () external payable {
        require(contractAddress == msg.sender,
            "Cannot mutate in this method!");
    }
    address public contractAddress;
}
