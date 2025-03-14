pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _sub_uint(uint x, uint u) public pure returns (uint) {
        if (x <= u) { return 0; }
        return x - u;
    }
}
module MultiPrecision {
    using MutateProgram for MutateProgram.uint;
    using MutateProgram for MutateProgram.uint256;
    using MutateProgram for MutateProgram.uint64;
    using MutateProgram for MutateProgram.uint8;

    import "./MutateProgram.sol";

    mapping (address => uint256 public balances) public balancesByAddress;
    address private _addressResolver;

    function balanceOf(address _addr) public view returns (uint256) {
        return balances[_addr];
    }


}
