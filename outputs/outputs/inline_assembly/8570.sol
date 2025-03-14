pragma solidity ^0.8.0;
contract Modul{
    function solve() public pure returns (bytes32) {
        assembly {

            div(0x0, 0x0)
            sub(0, 0)
        }
    }
}
