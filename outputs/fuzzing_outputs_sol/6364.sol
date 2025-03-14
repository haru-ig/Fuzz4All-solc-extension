pragma solidity ^0.8.0;
address MutantFallbackFunction = 0x6e3D5844956465928Ae1258392b63a88f98F7904;
MutantFallbackFunction.call(bytes4(keccak256("fallback()")), "");
