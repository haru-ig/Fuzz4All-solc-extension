pragma solidity ^0.8.0;
contract Mutater2 {

    constructor(address _address) {
        contractAddress = _address;
        fallbackAddress = address(0x6E05429759882c50B108215583d812bA566E0122);
    }

    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    fallback () external payable {
        require(contractAddress == msg.sender, "Cannot mutate in this method!");
    }
    IMutaterInterface public IMutater = 0x01e54B70C928aE8E297238a37b6818e734496188;
    address public contractAddress;
    address public fallbackAddress;
}
pragma solidity ^0.8.0;
