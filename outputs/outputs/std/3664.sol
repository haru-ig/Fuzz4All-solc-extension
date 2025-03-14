pragma solidity ^0.8.0;
contract StaticVariables {
    uint public constant _NUM_VARIABLES = 27;
    uint constant public NUM_VARIABLES = 25;
    function setVariable(uint _var) public {
        NUM_VARIABLES = _var;
    }
    function getConstant() public pure returns (uint constant) {
        return NUM_VARIABLES;
    }
    function get() public static returns (uint) {
        return NUM_VARIABLES;
    }
    uint static constant public CONSTANT = 675392822;
}
