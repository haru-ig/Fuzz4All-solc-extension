pragma solidity ^0.8.0;
contract FallbackCaller is Caller {
    receive() external payable {
        address payable self = payable(this);
        self.transfer(address(this).balance);
        return;
    }
}

pragma solidity ^0.8.0;
contract Contract {
    address payable contractOwner;
    mapping(address => uint) public balance;
    uint public numTransactions;


    receive() external payable {
        return;
    }
    function fallback() public payable {
        contractOwner.transfer(address(this).balance);
    }

    function receiveEthers() public payable {
        msg.sender.transfer(address(this).balance);
        return;
    }
    function callContract(address target) public payable {
        target.call{value: this.balance}(0);
    }
    constructor() {
        contractOwner = msg.sender;
    }

    function createContract(string memory calldata constructorParameters) public payable {
        address payable contract = new address payable(constructorParameters);
        contract.transfer(address(this).balance);
    }
    function createFallbackContract(string memory calldata constructorParameters) public payable {
        address payable contract = new address payable(constructorParameters);
        contract.transfer(address(this).balance);
        contract.fallback();
    }
    function callFallbackContract(address target) public payable {
        target.call{value: this.balance}(0);
    }
    modifier restricted {
        require(msg.sender == contractOwner);

        _;
    }
    function transfer(address payable recipient, uint amount) public restricted {
        balance[msg.sender] += amount;
        balance[recipient] -= amount;
    }
    function transferFrom(address sender, address recipient, uint amount) public restricted {
        balance[sender] -= amount;
        balance[recipient] += amount;
    }
    function transferAllFunds() public {
        msg.sender.transfer(address(this).balance);
    }
    function setBalance(address address_, uint amount_) public restricted {
        balance[address_] = amount_;
    }
    function getNumTransactions() public view returns (uint) {
        return numTransactions;
    }
    function addTransaction() public restricted {
        numTransactions += 1;
    }
    function hasFunds() public view returns (bool) {
        return address(this).balance > 0;
    }
    function hasContractOwner() public view returns (bool) {
        return msg.sender == contractOwner;
    }
}
