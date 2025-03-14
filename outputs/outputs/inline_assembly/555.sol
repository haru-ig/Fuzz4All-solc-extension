pragma solidity ^0.8.0;
contract InlineAssemblyMutated {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        assembly {
            mstore(0, 0xd1e11c8e1e4b58cd6a6240f704922417c557aeec)
        }
        return x;
    }
}
