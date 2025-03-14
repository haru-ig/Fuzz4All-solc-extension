pragma solidity ^0.8.0;
contract ContractWithFallbackModifier1 {
    receive() external pure {}
}
pragma solidity 0.8.4;

import "./ContractWithFallbackModifier1.sol";

contract Caller {
    contract ContractWithFallbackModifier3_2 {
        receive() external payable {
            fallback();
        }
    }
    function contractWithFallbackModifier3() public pure {}

    function contractWithFallbackModifier4() public pure {}

    fallback() public pure {}

    receive() external payable {}
}
