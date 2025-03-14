pragma solidity ^0.8.0;
contract Test31 {
    struct ArrayOfBytes {
        bytes[] array;
    }
    function t1() public pure returns (ArrayOfBytes memory) {
        ArrayOfBytes memory a;
        a = a;
        a.array = new bytes[](0);
        return a;
    }
    function t2() public pure returns (ArrayOfBytes memory) {
        ArrayOfBytes memory a;
        a.array = a.array;
        a.array[0] = 1;
        return a;
    }
}
