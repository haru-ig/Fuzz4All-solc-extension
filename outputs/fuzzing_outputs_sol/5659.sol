pragma solidity ^0.8.0;
contract semanticallyequivalent4
{
    uint x;
    function a() public pure returns(uint) {
        return x + 1;
    }
}
pragma solidity 0.8.9;
contract semanticallyequivalent3
{
    bytes32 x;
    function a() public pure returns(bytes32) {
        return x + "bytes";
    }
}
pragma solidity 0.8.9;
contract semanticallyequivalent2
{
    bytes x;
    function a() public pure returns(bytes) {
        return x + "bytes";
    }
}
pragma solidity 0.8.9;
contract semanticallyequivalent1
{
    function call() public {
        emit Error("No fallback function");
    }
    function a() public pure returns(uint) {
        emit Error("No fallback func");
        uint y = 5;
        return y + 1;
    }
}
pragma solidity 0.8.9;

interface IERC165
{

    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}



pragma experimental StringLiteralTypes;
/**
 * @dev Creates a contract that implements the interface `ERC165`.
 *
 * See https:
 * an interface in Solidity.
 *
 * This implementation is agnostic to the way in which your contracts are written, replaced, or inherited.
 * Using keywords such as `contract` `interface` `abstract` `open` `bytes` `enum` `external` `public` `private`
 * `internal` `abstract` `strict` `virtual` `override` are also known as modifiers.
 * See https:
