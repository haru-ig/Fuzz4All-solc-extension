pragma solidity ^0.8.0;
interface IMutable {
    function _mutate() external;
}
interface IImmutable is IMutable {
    function _mutate() external;
    function balance() external view returns (uint);
}
contract ImmutableFactory {
    function build(uint immutableCount, uint immutableValue)
    public returns (IImmutable immutable);
}
contract ImmutableFactory2 {
    constructor (uint immutableCount, uint immutableValue) public {
    }
    function build(uint immutableCount, uint immutableValue)
    public returns (IImmutable immutable) {
    }
}
