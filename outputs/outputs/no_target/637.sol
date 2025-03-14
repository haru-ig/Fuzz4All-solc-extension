pragma solidity ^0.8.0;
contract AWrapper2Interface {
    constructor() public {
    }
    function getData() public view returns (bytes memory){
        return aWrapper.getData();
    }
}
