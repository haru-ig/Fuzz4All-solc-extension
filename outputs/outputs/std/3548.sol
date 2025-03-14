pragma solidity ^0.8.0;
contract Test {
    constructor() {}
    function check() internal {
        uint256 value = msg.value;
        require(value >= 1000 ether);
        check();
    }
}
