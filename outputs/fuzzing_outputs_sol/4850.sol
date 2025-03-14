pragma solidity ^0.8.0;
contract Mutator2 {
    function payWithFallback(address payable _contract) public payable {
        if (_contract.isContract() && address(_contract).code()!= "0x")
            selfdestruct(_contract);
    }
}
contract Reverter2 {
    constructor () {
        revert("No fallback is defined.");
    }
}

pragma solidity ^0.8.0;
contract Mutator3 {
    function payWithFallback(address payable _contract) public payable {
        if (_contract.isContract() && address(_contract).code()!= "0x")
            msg.sender.transfer(address(uint160(_contract)));
    }
}
contract Reverter3 {
    constructor () {
        revert("No fallback is defined.");
    }
}
