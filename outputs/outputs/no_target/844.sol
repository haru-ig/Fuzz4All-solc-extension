pragma solidity ^0.8.0;
contract SemanticCheckOptimized {
    function safe_get(uint8 _storage) public view returns (bool) {
        return false;
    }
}

pragma solidity >=0.7.0;
pragma experimental ABIEncoderV2;

contract SemanticCheckCompiler {
    function is_safe_get(uint8 _storage) public pure returns (bool) {
        return false;
    }
}

pragma solidity >=0.7.0;
pragma experimental ABIEncoderV2;

contract SemanticCheckEncoder {
    function is_safe_get(uint8 _storage) public pure returns (bool) {
        return false;
    }

    function is_constructor() public pure returns (bool) {
        return false;
    }

    function is_fallback() public pure returns (bool) {
        return false;
    }

    function is_receive() public pure returns (bool) {
        return false;
    }

    function is_view() public pure returns (bool) {
        return false;
    }
}
library SemanticErrors {
    using SemanticErrors for uint8;
    function safe_get() internal pure returns (uint8) {
        return 0;
    }
}
