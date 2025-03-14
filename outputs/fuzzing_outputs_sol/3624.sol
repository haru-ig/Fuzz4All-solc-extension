pragma solidity ^0.8.0;
contract MutateSemantic6Caller5 {
    contract Mod {
        function f(uint256 x, uint256 y) public payable returns (uint256) {
            x += 1;
            x += 1;
            x += 1;
            x += 1;
            return x;
        }
    }
    function modifyC(uint256 x, uint256 y) public payable returns (uint256) {
        Mod.f(x, y);
    }
}
