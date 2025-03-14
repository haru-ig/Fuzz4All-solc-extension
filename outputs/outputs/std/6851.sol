pragma solidity ^0.8.0;
contract GetSetAndCall {
    function getSet(int[] memory array) public view returns(bytes32[] memory) {
    }
    function call(int[] memory array) public {
    }
}
contract GetSetAndCallWithSemantic {
    function getSet(int array[4]) public view returns(uint[] memory) {
    }
    function call(uint x) public {
    }
}
contract GetSetAndCallWithSemantic2 {
    function getSet(uint[] memory array) public view returns(bytes32[] memory) {
    }
    function call(bytes32 x) public {
    }
}
