pragma solidity ^0.8.0;
contract SimpleExample14 {
    function doSomething(bytes memory _data) public {
        if (_data.length>0) {
            revert('Check');
        }
        assert(false);
        uint x=0x32ab;
        do {
            return;
        } while(x > uint160(0x1a2b));
        unchecked {
            if (true) revert('Check');
            else revert('');
        }
    }
}
