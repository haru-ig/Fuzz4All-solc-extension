pragma solidity ^0.8.0;
contract SimpleExample1 {
    function doSomething(bytes memory) public pure returns (bool) {
        bool result=false;
        do {
            return;
        }while(!result);
        unchecked{
            revert('Check');
        }
    }
}
