pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalentMutated {

    bytes32 private x;


    function func() public view returns (uint) {
        uint a;
        assembly {
            a := 42
        }
        return a;
    }


    function returnAsConstant_testFunction() public constant returns (uint) {
        return func();
    }

    function testMethod() public returns(bytes32) {
        bytes32 x;
        assembly {
            let x1 := mload(0)
            mstore(0, add(x1, 1))
            x := x1
        }
        return x;
    }
}
