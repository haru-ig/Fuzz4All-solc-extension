pragma solidity ^0.8.0;
contract Mugger {
    constructor() {

        _muggerAddress = msg.sender;
    }
    function getMuggerAddress() public pure returns (address) {
        return _muggerAddress;
    }
    address private _muggerAddress;
}

pragma solidity ^0.8.0;
contract Mutation {
    Mugger private _mugger;

    constructor() {
        _mugger = new Mugger();
    }

    function setMuggerContract(address _muggerAddress) public {
        require(msg.sender == _mugger.getMuggerAddress(), "You cannot call a function!");
        _mugger.setContractAddress(_muggerAddress);
    }

    function setMugger(address _mugger) external {
        require(msg.sender == _mugger, "you are not the mugger!");

        _mugger.setMuggerAddress(_mugger);
    }

    fallback() external {
        require(contract(msg.data).delegatecall(abi.encodeWithSelector(ERC820Receiver(_mugger).ERC820Received.selector))), "contract is not a valid mugger");
    }



    function validMessage(uint value, uint max) public pure returns (bool) {
        return value <= max;
    }

}
