pragma solidity ^0.8.0;
contract Example9 {

    address contractAddress = address(new Example9());
    function main() payable external {

        address payable emptyFunctionAddress = address(0x0);
        emptyFunctionAddress.call{value: 1 ether}(new bytes(0));
    }
}
