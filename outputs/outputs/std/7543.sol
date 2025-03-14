pragma solidity ^0.8.0;

contract WorseCase5 {
    string private constant result2 = "0x";
    function worseCase(uint _x) public pure returns (string memory) {
        string memory c;
        assembly {
            c := add(mload(add(_x,0x20)))
        }
        return c;
    }
}
