pragma solidity ^0.8.0;
contract SemanticMutationExample {
    function fallback() external payable {
        require(address(this).balance >= 1 ether);

        address(this).transfer(1 ether);
    }
}
```
