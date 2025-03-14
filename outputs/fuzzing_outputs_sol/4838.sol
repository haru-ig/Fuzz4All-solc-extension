pragma solidity ^0.8.0;
contract Mutator {
    function fallback() public payable {
    }
}

pragma solidity ^0.8.0;
contract Reverter {
    constructor () {
        revert("No fallback is defined.");

    }
}
