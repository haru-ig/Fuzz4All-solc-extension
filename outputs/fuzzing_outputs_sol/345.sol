pragma solidity ^0.8.0;
contract MutatedContractWithFallbackModifier2_4 {
    function fallback() public pure returns (address payable) { return payable(address(0)); }
}
contract ContractWithFallbackModifier_2_4 is Callable{
    function fallback(uint256) public pure returns (address payable) {
        return payable(address(0));
    }

    receive() payable pure {}
}
contract ContractWithFallbackModifier_3_4 is ContractWithFallbackModifier_2_4{
    function fallback(uint256 _x) public pure returns (address payable) { return payable(address(0)); }
}
*/
