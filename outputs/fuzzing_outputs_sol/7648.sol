pragma solidity ^0.8.0;
contract FallbackSemanticEquivalence0
{
    fallback struct PayableFallback { fallback function () public payable {} }
}
