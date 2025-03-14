pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2 {
    function foo() public pure overridable returns (address) { return address(0); }
    function fallback() public payable { return; }
}
contract ContractWithFallbackModifier {
    function foo() public pure returns (address) { return address(0); }
    function fallback() public returns (uint256) { return 0; }
}
contract Callers {
    uint256 public constant value = 0;
    address public constant caller = msg.sender;

    function fallback() public payable {


        require(caller == msg.sender, "Ether must be sent to the contract through a fallback()");


        require(msg.value == value, "Ether must be sent to the contract with a fallback()");

        (bool success, ) = address(this).call{gas: 200}("");
        require(success, "Ether must be sent to the contract with a fallback()");
    }
}
