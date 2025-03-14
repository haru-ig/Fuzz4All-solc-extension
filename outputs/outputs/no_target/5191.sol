pragma solidity ^0.8.0;
contract SimpleExample {
    uint constant MAX=0xabcdef;
    uint internal private constant VALUE=0x32ab;
    event Log(uint b);

    function doSomething(bytes memory _data) public {
        if (_data.length>0) {
            revert('Check');
        }
        uint x=0x32ab;
        do {
            return;
        } while(x < uint256(0x1a2b));
        unchecked {
            revert('Check');
        }
    }

    function doSomething2(bytes memory _data) public {
        if (_data.length>0) {
            revert('Check');
        }
        uint x=uint160(0x32ab);
        do {
            return;
        } while(x > uint256(0x1a2b));
        unchecked {
            revert('Check');
        }
    }
}
