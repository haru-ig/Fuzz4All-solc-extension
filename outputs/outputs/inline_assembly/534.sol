pragma solidity ^0.8.0;
contract InlineAssembly {
    function testMethod() public pure returns(uint memory) {
        assembly {
            mstore(0, 1)
            return(0)
        }
    }
}
