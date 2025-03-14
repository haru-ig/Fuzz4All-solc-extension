pragma solidity ^0.8.0;
contract Mutator2 {
    function payWithFallback(address payable _contract) public payable {
        if (msg.value == 0) {
            throw;
        }
        function internalFunction() internal {
            if (!fallback()) {
                selfdestruct(_contract);
            }
        }
        internalFunction();
    }
}
contract Reverter2 {
    constructor () {
        selfdestruct(payable(new Punter()));
    }
}
