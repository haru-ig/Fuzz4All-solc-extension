pragma solidity ^0.8.0;
contract MockERC20Token is IERC20 {

    string public name = "MockERC20Token";
    string public symbol = "MTOKEN";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1234;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function transfer(address to, uint256 value) public returns (bool) {
        if (transferAndCall(to, value)) {
            emit Transfer(address(this), to, value);
        }
        return true;
    }

    function transferAndCall(address to, uint256 value) internal returns (bool) {

        (bool success, ) = to.call{value: value, gas: gas()}("");
        require(success, "TransferAndCall failed.");
        return true;
    }
}
