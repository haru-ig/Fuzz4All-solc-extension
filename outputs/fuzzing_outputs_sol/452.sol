pragma solidity ^0.8.0;
contract Escrow4 {
    address payable[2] public contractAddresses;
    mapping(bytes4=>address[]) registeredContracts;
    function changeContract(bytes4 _contractType, address _address) external {
        require(contractAddresses[_contractType] == address(0), "Already a contract");
        if (contractAddresses[_contractType]!= address(0)) {
            _terminate(_contractType);
        }
        contractAddresses[_contractType].transferFrom(msg.sender, address(this), msg.value);
        require(registeredContracts[_contractType].push(_address) == 1, "Registration failed");
    }
    function getContractInfo() public view returns (address[]) { return registeredContracts[msg.sig]; }
    function getContractAddresses() public view returns (address payable[]) { return contractAddresses; }
    function _terminate(bytes4 _contractType) internal {
        require(contractAddresses[_contractType]!= address(0), "Contract does not exist");
        contractAddresses[_contractType].transfer(contractAddresses[_contractType], 20 ether);
        delete registeredContracts[_contractType];
        contractAddresses[_contractType] = address(0);
    }
}
pragma solidity >= 0.6 <0.9;
contract Escrow5 {
    address payable[2] public contractAddresses;
    mapping(bytes4=>address[]) registeredContracts;
    function changeContract(bytes4 _contractType, address _address) external {
        require(contractAddresses[_contractType] == address(0), "Already a contract");
        contractAddresses[_contractType] = _address;
        require(registeredContracts[_contractType].push(_address) == 1, "Registration failed");
    }
    function getContractAddresses() public view returns (address payable[]) { return contractAddresses; }
    function getContractInfo() public view returns (address[]) { return registeredContracts[msg.sig]; }
    function _terminate(bytes4 _contractType) internal {
        require(contractAddresses[_contractType]!= address(0), "Contract does not exist");
        contractAddresses[_contractType].transfer(contractAddresses[_contractType], 20 ether);
        delete registeredContracts[_contractType];
        contractAddresses[_contractType] = address(0);
    }
}
pragma solidity >= 0.8 <0.9;
contract Escrow6 {
    address payable[2] public contractAddresses;
    mapping(bytes4=>address[]) registeredContracts;
    function changeContract(bytes4 _contractType, address _address) external {
        require(contractAddresses[_contractType] == address(0), "Already a contract");
        contractAddresses[_contractType] = _address;
        require(registeredContracts[_contractType].push(_address) == 1, "Registration failed");
    }
    function getContractAddresses() public view returns (address payable[]) { return contractAddresses; }
    function getContractInfo() public view returns (address[]) { return registeredContracts[msg.sig]; }
}
