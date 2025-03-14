pragma solidity ^0.8.0;
contract Immutable is IImmutable {
    uint256 constant private X = uint256(uint160(uint256.max)) + 1;
    uint256 x;
    constructor() { x = X; }
}

pragma solidity ^0.8.0;
address immutable private immutableAddr = (address(0));
address immutable getAddress = immutableAddr.immutableFrom;
contract Immutable2 is IImmutable {
    uint256 constant private X = uint256(uint160(uint256.max)) + 1;
    uint256 private x;
    constructor() { x = X; }
    function immutableFrom() public view returns (address) { return immutableAddr; }
}
contract ImmutableContract {
    function call() public pure returns (uint256) { return address(0).immutableFrom; }
}
