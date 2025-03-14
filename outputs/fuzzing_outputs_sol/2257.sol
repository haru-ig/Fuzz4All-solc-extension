pragma solidity ^0.8.0;
contract Caller {
    uint256 public _x;
    contract B {
        mapping (uint256 => string) stringData;
        function showArray() public view returns (string memory[]) {
            return new string[](1);
        }
    }
    function Caller(string memory s) {
        B memory b;
        b.stringData["a"] = s;
    }
    function showArray() public view returns (string memory[]) {
        return b.showArray;
    }
}
