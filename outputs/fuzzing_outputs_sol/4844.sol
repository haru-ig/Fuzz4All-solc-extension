pragma solidity ^0.8.0;
contract Mutator {
    function fallback() public payable {
        emit MoneyRaised(address(this), msg.value);
    }
}

pragma solidity ^0.8.0;
contract Reverter {
    constructor () {
        emit MoneyRaised(address(this), 0);
    }
}
