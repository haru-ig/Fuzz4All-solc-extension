pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate7
{
    address _to;
    function _mint(address a) internal {
        emit EMIT_MINT_B(_to, keccak256(abi.encodePacked("{1}", a)));
    }
}
