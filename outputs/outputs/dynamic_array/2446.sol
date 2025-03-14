pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_bb779d383a23cd0cc046a83a635f190ee062620e
{
    uint16 internal f16;


    address [] dynamicArray;
    uint256 [] a;
    int256 [] b;
    uint256 [] c;
    bytes32 [] d = new bytes32[](2);

    function () external payable {}

    function assignDynamicArray(address [] memory a) public
    {
        dynamicArray = a;
    }

    function assign10() public
    {
        a = new uint256[](10);
        b = new int256[](10);
        c = new uint256[](10);
        for (uint256 i = 0; i < 10; i++)
        {
            a[i] = i + 1;
            b[i] = i + 9;
            c[i] = i + 99;
        }
    }

    function assign10Bytes32() public
    {
        d = new bytes32[](10);
        for (uint256 i = 0; i < 10; i++)
        {
            bytes32 b;
            assembly {
                let b := mload(add(a(), 32))
                b := and(shr(256, b), mloadadd(add(d(), 32), and(shr(i, 8), b)))
            }
        }
    }

}
