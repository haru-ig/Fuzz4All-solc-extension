pragma solidity ^0.8.0;
contract SemanticModifier {
    uint public value;
    constructor() public {
        value = S.balance();
    }
    modifier restricted() {
        require(S.balance()>0 || false,"Unrestricted");
        _;
    }
    function test1() public restricted {
        if (msg.value>0) {
             revert("Cannot withdraw positive value");
        }
    }
    receive() public nonpayable restricted {

    }
}
