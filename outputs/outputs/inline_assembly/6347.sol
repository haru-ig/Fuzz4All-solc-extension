pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract TestContract {
    function main() internal {
        bytes memory result;
        (result, ) = address(this).call{value: 1 ether}("");
        require (abi.decode(result, (address))) == address(this);
    }
}
