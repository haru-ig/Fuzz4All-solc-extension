pragma solidity ^0.8.0;
contract SimpleExample {
    function doSomething(bytes memory){
        uint x=0x32ab;
        uint y = uint160(0x1a2b);
        y = 0x1122;
        uint z=x+y;
        uint w=y+z;
        boolean result = false;
        unchecked {
            result = result+true;
        }
        result+=(false? true : false);
        success;
    }
}
