pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_mutations {
    function testMutator01(uint[] memory _arr) public returns (uint[] memory) {
        _arr[0] = 3;
        return _arr;
    }
    function testMutator02(address[] memory _arr) public returns (address[] memory) {
        _arr[0] = 0x4aB49F0;
        _arr[1] = 0x4b2326;
        return _arr;
    }
    function testMutator03(bytes memory _arr) public returns (bytes memory) {
        _arr[0] = 0x020020;
        _arr[1] = "hi!".toEthSignedMessageHash();
        _arr[2] = "hi!".toEthSignedMessageHash();
        return _arr;
    }
    function testMutator04(int[] memory _arr) public returns (int[] memory) {
        _arr[0] = 16;
        return _arr;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_nestedArrays {
    struct A {
        uint value;
        int[] items;
    }
    function arrCreateTest(int[] memory _arr) public returns (A memory) {
        _arr;
        int[10][20] memory arr = new int[10][];
        uint _arr;
        _arr;
        return A(arr, _arr);
    }
    function arrAccessTest(A memory arr) public view returns (int
