pragma solidity ^0.8.0;
contract InvertedABIv2
{
    function f(uint256[] memory input) public pure {
            for (uint256 i = 0; i < input.length; i++) {
                input[i] = input[i] + 10 * (input.length - i) / 2;
            }
    }
}





/* The following Solidty 0.8 release,
