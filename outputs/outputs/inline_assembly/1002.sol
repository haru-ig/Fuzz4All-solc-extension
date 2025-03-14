pragma solidity ^0.8.0;
contract SimpleStorage2 is SimpleStorage{
    constructor () public {}

    function publicStorage() public view pure override {}
    function onlyInternalStorage() internal view override {}
    function onlyExternalStorage() external view override {}
}
