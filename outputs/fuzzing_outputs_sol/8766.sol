pragma solidity ^0.8.0;
contract TestCaller2 {
    uint public constant value = 9;
    constructor () { require(value > 0); }
    receive() external pure {}
    function fallback() public pure { revert("You did not receive Ether"); }
}

pragma solidity ^0.8.0;
contract TestCaller3 {
    uint public constant value = 9;
    address payable destination;
    constructor (address payable f) { destination = address(f); }
    receive() external payable { return; }
    function fallback() public pure { require(destination.call{value: address(this).balance}()); }
}

pragma solidity ^0.8.0;
contract TestCaller4 {
    uint public constant value = 9;
    constructor () { require(value > 0); }
    receive() external payable {}
    function fallback() public pure { require(true); }
}
