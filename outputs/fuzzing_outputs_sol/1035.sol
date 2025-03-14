pragma solidity ^0.8.0;

contract NoFallback {

    address payable private owner;
    bytes4 private constant _INTERFACE_ID = 0x2000;

    constructor () {
        selfdestruct(owner);
    }

    function getInterfaceId() public pure virtual returns (bytes4) {
        return _INTERFACE_ID;
    }

    function () external payable {
        emit Log("Fallback function invoked (no fallback function)");
        require(interfaceId(msg.sig) == _INTERFACE_ID, "not-contract");
    }

    function payable fallback() external payable {}

    function emmitLog() internal pure {
        emit Log("Emitting log");
    }

    function interfaceId(string memory _signature) internal pure returns (bytes4) {
        return bytes4(_signature);
    }

    function emitLogPayableFallback() public {
        emit emmitLog();
        emit emmitLogPayableFallback();
        emit emmitLogPayableFallback();
    }

    event Log(string message);
}
