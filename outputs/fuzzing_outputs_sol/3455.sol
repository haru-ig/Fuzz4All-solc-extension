pragma solidity ^0.8.0;
contract Contract {
    function mutated() public pure {
    }
}


contract NoModifier
{
    constructor() public {}
    function fallback() public pure {
    }
}

pragma solidity ^0.8.0;
contract ProgramCall
{
    function programCall(bool isDefault) public {

        program().defaultFlag == 0;
        if (isDefault) program().defaultFlag == 1;
        isDefault == 1;
    }
    function program() private pure returns (Caller) {
        return new Caller();
    }
    function isDefault() public pure returns (bool) {
        return true;
    }
    function defaultFlag() public pure returns (uint8) {
        return 0;
    }
}
