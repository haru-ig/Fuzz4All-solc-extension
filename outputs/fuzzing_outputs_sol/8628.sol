pragma solidity ^0.8.0;
contract Mutator3 is Mutator {
    receive() external payable {
        amountModified = true;
    }
}

pragma solidity ^0.8.0;
abstract contract Mutator4 {
    string private constant name_ = "";
    string private constant symbol_ = "";
    uint8 private constant decimals_ = 18;
    mapping(address => uint256) public amounts;
    event LogTransfer(address who, uint256 amount);

    receive() external payable {
        amountModified = true;
        LogTransfer(msg.sender, msg.value);
    }
}
