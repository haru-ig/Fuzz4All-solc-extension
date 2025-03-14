pragma solidity ^0.8.0;
contract Test30018 {
    constructor () public {}
    uint[] get() external view returns (uint[1] memory);
    bytes[] getB() external view returns (bytes[1] memory);
    fallback () external { get[0] = data[0]--; }
    fallback () external { getB[0] = data[0]--; }
}
