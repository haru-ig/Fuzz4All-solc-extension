pragma solidity ^0.8.0;
interface Fallback3
{
        function a(bytes memory data) payable external onlyWhenSuccessful;
}
