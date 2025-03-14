pragma solidity ^0.8.0;
contract C1 {
    address payable x = payable(address(uint256(2)));
    function call()
    internal payable {
        payable(address(x)).transfer(tx.gasprice, msg.value);
    }
}
