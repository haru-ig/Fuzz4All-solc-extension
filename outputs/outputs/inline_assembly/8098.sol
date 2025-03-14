pragma solidity ^0.8.0;
contract InlinedSolidity
{






    constructor() {

        this.override1();

        uint num = 1 + this.callFunction(100);

        externallyOverridable();
    }

    function override1() virtual external {
    }
    function thisCallFunctionWithParameters(uint256 num) pure external returns (uint256) { return num; }
    function externallyOverridable() external override {}
}

contract Derived(InlinedSolidity) {
    constructor(uint256 i) public {
        i = i + 1;
    }
}
