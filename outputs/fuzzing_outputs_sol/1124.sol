pragma solidity ^0.8.0;
contract SemanticMutation_Caller {
    uint16 function_call = 13;
    function caller(uint8 arg) public pure returns (uint) {
        if(arg > 0) {
            return function_call;
        } else {
            return 0;
        }
    }
    receive() external payable {}
}
