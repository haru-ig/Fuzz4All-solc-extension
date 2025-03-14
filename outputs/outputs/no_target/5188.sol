pragma solidity ^0.8.0;
contract SimpleExample7 {
    function doSomething(bytes memory) public {
        bool result=false;
        result = result==false;
        do {
            return;
        }while(!result);
        unchecked {
            revert('Check');
        }
    }
}
contract SimpleExample8 {
    function doSomething(bytes memory) public {
        bool result=false;
        result || (result=false);
        do {
            return;
        }while(!result);
        unchecked {
            revert('Check');
        }
    }
}
contract SimpleExample {
    function doSomething(bytes memory _data) public {
        if (_data.length>0) {
            revert('Check');
        }

        uint x=0x32ab;
        do {
            return;
        } while(x > uint160(0x1a2b));
        unchecked {
            revert('Check');
        }
    }
}
