pragma solidity ^0.8.0;
contract Memento {
    modifier payablePayables() {
        require(msg.value == 1 ether);
        _;

    }
    event ContractCreated(uint);
    function Fallback(uint) internal payable {}
    function call(uint) internal payable {}
}
