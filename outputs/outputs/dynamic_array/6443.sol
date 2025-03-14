pragma solidity ^0.8.0;
interface i {
    function m() external payable returns (uint16);
}
contract A1Storage {
uint256 constant size = 20;
i x;
A1Storage() public {
    x = i(uint2address(bytes(abi.encodePacked("abcdefghijklmnopqrstuvwxyz ", "123456789"))));
}
}
A1Storage public y;
