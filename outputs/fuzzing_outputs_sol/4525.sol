pragma solidity ^0.8.0;
contract SemanticDifferent1 {
    function mutate() public pure {
        (bool success, ) = payable(address(this)).call{value: 1 ether}("");
        assert(success);
    }
}
library ContractRegistry {
    function fallback(bytes memory) internal pure {

    }
}
