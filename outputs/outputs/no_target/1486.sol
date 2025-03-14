pragma solidity ^0.8.0;
contract Semantic0031 {
    struct SemanticError {
        uint112 number;
        string functionId;
        bytes callData;
    }
    function same() public pure {
        SemanticError memory error;
        error.number = -10000000000000000000;
        error.functionId = "some_test";
        error.callData = "some_data";
        bool x;
        x = error.number > 0;
        x = error.number < 0;
        x = error.number >= 0;
        x = error.number <= 0;
        x = error.number === 0;
        x = error.number!== 0;
        x = error.number > 0;
        x = error.number < 0;
        x = error.number >= 0;
        x = error.number <= 0;
        x = error.number === 0;
        x = error.number!== 0;
    }
    struct SemanticError {
        uint128 number;
        string functionId;
        bytes callData;
    }
    function same() public pure {
        bool x;
        x = false;
        uint256 number256;
        number256 = 3600;
        number256 += 0;
        number256 *= 0;
        number256 /= 0;
        number256 = 3600;
        string memory string256 = string( uint256(3600) );
    }
    struct SemanticError {
        uint256 number;
        string functionId;
        bytes callData;
    }
    function same() public pure {
        bool x;
        x = false;
        (uint32 x256) = (3600);
        (uint32 x256) = 8001;
        (string calldata x256) = "string string";
        (string | bool) = ( 3600 );
        (address x256) = 3600;
        bool x2562 = x256 + uint128(256);
        bool x2563 = x256 + uint128(512);
        bool x2564 = uint128(256) + x256;
        bool x2565 = x256 * 256;
        bool x2566 = x256 / 256;
        bool x2567 = x256 / 0;
        bool x2568 = (x256 + 1) - (x256 + x256);
        bool x2
