pragma solidity ^0.8.0;
contract Immutable is IImmutable {
    address internal static immutable immutableAddress = address(0xffffffffffffffff);
    function addressFrom() public view returns (address) {
        return immutableAddress;
    }
}
