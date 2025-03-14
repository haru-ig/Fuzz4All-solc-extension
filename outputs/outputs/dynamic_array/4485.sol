pragma solidity ^0.8.0;
contract NewContract {
    bytes32 constant FACTORY_SLOT = 0xf961ef8492417db2dc310af9d7560a977a2d7e86283f6d51ae0d0e28df2c4212;
    bytes32 constant FACTORY_DEFAULT = 0x49f3d58a751a9059ca5d7986501518755c950c18d62abcb2e2fa2382e43c702d;
    modifier onlyFactory { require(bytes32(abi.functionSelector(FACTORY_SLOT)) == FACTORY_SLOT); _; }
    modifier onlyDefault { require(bytes32(abi.functionSelector(FACTORY_SLOT)) == FACTORY_DEFAULT); _; }
    constructor(uint256 a) _ { }
    function test() public onlyFactory returns(uint256, bytes memory) {
    return(3, "Hello"); }
}
