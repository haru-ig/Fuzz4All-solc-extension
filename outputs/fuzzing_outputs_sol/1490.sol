pragma solidity ^0.8.0;
contract SemanticMutationExample3 is SemanticMutationExample2 {
    function semanticMutationExample(address payable _addr) public {
        address iEthereumWalletAddress = msg.sender;
        smartContract2 = _addr;
        for(i64 i = 1;i <= 3;i++) {
            _addr.call{value : 1}(abi.encodeWithSignature("foo() pure",));
        }
        uint a = 55;
    }
}
