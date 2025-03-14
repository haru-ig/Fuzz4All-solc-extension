pragma solidity ^0.8.0;
contract EquivalentContract {
    function fallback() external payable {
        EquivalentContract ec;
        assembly {
            ec := mload(ptr)
            add(ec, 0x20)
            calldatacopy(ec, 0, returndatasize)
            delegatecall(ec, returndatasize, 0, 0)
        }
    }
}
