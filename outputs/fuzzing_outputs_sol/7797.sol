pragma solidity ^0.8.0;
contract SyntaxRevertCaller {
    receive() external returns (uint256) {   }
    fallback() external payable {   }
}




pragma solidity ^0.8.0;
import "./NewSemantic.sol";
import "./SyntaxRevert.sol";
contract NewSemanticsCaller2 is NewSemantic, SyntaxRevert {

    function fallback(uint256 amount) external payable {
    }
}
