pragma solidity ^0.8.0;
contract B {
    function useStringArray(string memory[1] storage arr, string memory key) {
        arr.length;
    }
    function useInt(int memory i) public pure {
        i + 1;
    }
}
