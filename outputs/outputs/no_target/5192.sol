pragma solidity ^0.8.0;
contract MutatedExample {
    function doSomething(bytes memory) public {
        bool result=false;
        result = result==false;
        do {
            _this = this;
        }while(!result);
        unchecked {
            result = false;
        }
    }
}
