pragma solidity ^0.8.0;
contract MutateCaller2 {
    address payable payee;
    address payable payeeBackup;
    receive() external payable {}
    fallback() external payable payable {}
    constructor() {
            payeeBackup = payee;
    }
}

pragma solidity ^0.8.0;
contract ContractCaller {
    bool private initialized = false;
    address payable public payee;
    bool public override paid;
    receive() external payable {
        require(! paid );
        paid = true;
    }
    constructor() {
        payee = wallet();
    }
    fallback() external payable {
        require(initialized || msg.data.length == 0);
        require(msg.value > 0);
        initialized = true;
    }
    function wallet() public view returns (address payable) {
        if(! initialized) {
            return payee;
        }
        return payee;
    }
    function setWallet(address payable wallet) public {
        paid = false;
        initialized = true;
        payee = wallet;
    }
}

pragma solidity ^0.8.0;
contract ContractCaller2 {
    bool private initialized = false;
    address payable public payee;
    bool public override paid;
    receive() external payable {
        require(! paid );
        paid = true;
    }
    constructor() {
        payee = wallet();
    }
    fallback() external payable pure {
        require(initialized);
        require(msg.value > 0);
        initialized = true;
    }
    function wallet() public view returns (address payable) {
        if(! initialized) {
            return payee;
        }
        return payee;
    }
    function setWallet(address payable wallet) public {
        paid = false;
        initialized = true;
        payee = wallet;
    }
}
