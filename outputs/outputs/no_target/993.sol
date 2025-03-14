pragma solidity ^0.8.0;
contract SemanticMutation12 {
    function update()
        public
        pure
        returns (bool)
    {
        return false;
    }
}
pragma solidity ^0.8.0;

import "SemanticMutation13.sol";
import "SemanticMutation12.sol";
contract SemanticMutation11 is SemanticMutation10, SemanticMutation11, SemanticMutation13, SemanticMutation12{
    function update()
        public
        pure
        returns (bool)
    {
        return (update() > 0);
    }
}
