pragma solidity ^0.8.0;
contract SimpleExample6 {
    function doSomething(bytes memory) public {
        bool result=false;
        do {
            return;
        }while(!result);
        unchecked {
            revert('Check');
        }
    }
}
