pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint256 public myUint256;
    uint256 public x;
    SimpleMutation public simpleMutation;
    SimpleMutation3 public simpleMutation3;

    function ContractWithFallback() public {
        myUint256 = 5;
    }
}
contract FallbackTest is ContractWithFallback {
    SimpleMutation simpleMutation = new SimpleMutation();
    SimpleMutation3 simpleMutation3 = new SimpleMutation3();
    bytes4 constant externalSelectorOne = 0x607059cb;
    bytes4 constant externalSelectorTwo = 0xcafebabe;
    bytes4 constant internalSelector = 0x1000;

    function () external payable virtual externalSelectorOne {
        uint256 test1 = simpleMutation.simpleMutation();
        (uint256 test2, ) = simpleMutation3.call.value(1 ether)();

        (uint256 test4, ) = simpleMutation3.simpleMutation();


        (, string memory test7, uint16 test8) = simpleMutation.simpleMutation3();
        (uint256 test9, ) = simpleMutation3.simpleMutation3();
        (uint16 test10, ) = simpleMutation3.simpleMutation3();

        simpleMutationFunction();
        (bool test11,, uint16 test12) = simpleMutation.trySimpleMutation();

        simpleMutation3Call();
        (bool test13, string memory test14, uint16 test15) = simpleMutation3.trySimpleMutation3();

        simpleMutationFunction0();
        (uint256 test16, ) = simpleMutation.simpleMutationFunction();


        simpleMutation3Call0();
        (uint256 test18, ) = simpleMutation3.simpleMutation3Call();




        uint16 a1 = simpleMutation.s020();

        uint16 test22 = simpleMutation3.s005();

    }

    function simpleMutationFunction() public pure {
        simpleMutation.emitSimple();
        uint16 func1 = simpleMutation.s000();
        uint16 func2 = simpleMutation.s000();
        uint256 x1 = simpleMutation.s001();
