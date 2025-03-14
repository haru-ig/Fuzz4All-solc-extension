pragma solidity ^0.8.0;
contract SemanticCheck1 {
    function safe_negate_literal()
        public
        nondestructive
    {
        return;
    }
}



pragma solidity ^0.8.0;
contract SemanticCheck {
    function safe_negate_literal()
        public
    {
        return;
    }
    function safe_get(address)
        public
        pure
        returns (bool)
    {
        return true;
    }
}
