pragma solidity ^0.8.0;
import './IConvert.sol';
contract TestConvert {
    function test() public pure returns(uint256) {
        return IConvert(new bytes(0).decode(0)).fromString("11");
    }
}
