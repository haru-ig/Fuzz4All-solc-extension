pragma solidity ^0.8.0;
contract C {
    B public b;
    function main() public payable {
        for(uint i = 0;i < 10;i++) {
            b.set(0);
        }
    }
}
