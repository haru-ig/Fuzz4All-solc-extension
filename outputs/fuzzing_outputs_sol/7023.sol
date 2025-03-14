pragma solidity ^0.8.0;
contract CallerSemantics {
    function get() public returns (uint) {
        return this.balance;
    }
}

pragma solidity ^0.8.0;
contract CallerSemanticsNoFallback {
    function get() public returns (uint) {
        this.balance;
    }
}
