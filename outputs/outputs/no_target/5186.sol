pragma solidity ^0.8.0;
contract SimpleExample6 {
    function doSomething(bytes memory) public {
        bool result;
        do {
            break;
        }while(!result);
        bool temp = result;
        unchecked {
            temp = false;
        }
        if(temp){
            revert('Check');
        }
    }
}
