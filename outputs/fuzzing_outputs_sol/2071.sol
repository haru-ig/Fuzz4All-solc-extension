pragma solidity ^0.8.0;
contract Mutater4 is Mutater3 {
    constructor (address _address) {
        super(_address);
    }
    function setContractAddress(address _address) public {
        super.setContractAddress(_address);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function mutate() external{
        Mutater4 _contractInstance = Mutater4(msg.sender);
        require(_contractInstance.setContractAddress(address(new Mutater4)),
            "Cannot configure a fallback address");
    }
}
