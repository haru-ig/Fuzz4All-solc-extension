pragma solidity ^0.8.0;
contract Example6 {
    receive() public payable {
    }
}

pragma solidity ^0.8.0;
contract Example7 {
    address payable contract;
    constructor() public payable {}
    receive() payable {
        contract.transfer(msg.value);
    }
}
