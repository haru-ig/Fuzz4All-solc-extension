pragma solidity ^0.8.0;
contract AWrapperInterface {
    constructor() public {
    }
    function getData() public view returns (bytes memory){
        return new bytes(42);
    }
}
