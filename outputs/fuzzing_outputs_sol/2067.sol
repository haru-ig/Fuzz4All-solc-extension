pragma solidity ^0.8.0;
contract Mutater4 {
    constructor(address _address) {
        contractAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    fallback () external payable {
        Contract2 myContract = new Contract2(contractAddress);
        myContract.setContractAddress(address(this));
    }
    address public contractAddress;
}

pragma solidity ^0.8.0;
contract Mutater5 {
    constructor(address _address) {
        contractAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    fallback () external payable {
        Mutater4 myMutater4 = new Mutater4(contractAddress);
        myMutater4.setContractAddress(myMutater3.getContractAddress());
        myMutater5.getContractAddress();
    }
    address public contractAddress;
}




pragma solidity ^0.8.0;
contract Contract2 {
    address public contractAddress;
    constructor(address _address) {
        contractAddress = _address;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
}






pragma solidity ^0.8.0;
contract Mutater6 {
    address public contractAddress;
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
}






pragma solidity ^0.8.0;
contract Mutater7 {
    constructor() {}
    address public contractAddress;
}





pragma solidity ^0.8.0;
contract Caller {
    function getContractAddress() public view returns (address) {
        return Contract2(contractAddress).getContractAddress();
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    fallback() external payable {
        address contract2Address = new Contract2(contractAddress);
        Mutater6 myMutater6 = new Mutater6();
        Mutater7 myMutater7 = new Mutater7();
        myMutater6.setContractAddress(contract2Address);
        myMutater7.setContractAddress();
    }   uint256 internal tokenAmount = 1
