pragma solidity ^0.8.0;
contract Array {
    function getMin(uint[] memory) public view returns (uint)
    {
        uint min = uint(uints32[4]).max;
        for (uint i=0; i < uints32[4].length; i++)
        {
            if (uints32[4][i] < min)
            {
                min = uints32[4][i];
            }
        }
    }
    function getMax(uint[4] memory) public pure returns(uint) {
        uint max = uint(uints32[4]).max;
        for (uint i=0; i < uints32[4].length; i++)
        {
            if (uints32[4][i] > max)
            {
                max = uints32[4][i];
            }
        }
    }
    function getSum(uint[2] memory) public pure returns(uint)
    {
        return uint(uints32[2]).max;
    }
    function getElementsOf(uint[4] memory) public pure returns(uint[]) {
        uint[] memory result = new uint[](uints32[4].length);
        for (uint i=0; i < uints32[4].length; i=i+1)
        {
            result[i] = uints32[4][i];
        }
        return result;
    }
    function getElementsOf(uint[2] memory) public pure returns(uint[2])
    {
        uint[2] memory result = uints32[2].max;
        for (uint i=0; i < uints32[4].length; i=i+1)
        {
            result[i] = uints32[4][i];
        }
        return result;
    }
    function findMinInt(uint) public pure returns(uint) {}
    function findMaxInt(uint) public pure returns(uint) {}
    function findSum(uint) public pure returns(uint) {}
    function setArray(uint[]) public view returns (uint[]) {}
    function setArray(uint[3]) public view returns (uint[3]) {}
    function getSortedArray(uint[4] memory) public view returns (uint[4]) {}
<fim_prefix><reponame>AuroraDapp/aura-contracts

pragma solidity ^0.8;

import "../AuraDapp.sol";
import {
    IERC20,
    IERC20 token,
    tokenMetadata,
    tokenName,
    tokenSymbol
} from '../interfaces/AuraDapp.sol';

contract TokenAuraDapp is AuraDapp, IERC20 {
    bytes32 public constant NAME = keccak256(bytes('AuraDapp Token'));
    bytes32 public constant SYMBOL = keccak256(bytes('ADT'));
    uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 500000000 * 1e12;

    constructor(address owner
