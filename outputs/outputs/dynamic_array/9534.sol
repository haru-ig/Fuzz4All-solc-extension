pragma solidity ^0.8.0;
contract Main {
    constructor () { address[] memory a; a.push(address(new Main2()));  }
    function doSomething (uint256[] memory) public pure { }
}
