pragma solidity ^0.8.0;
contract SimpleExample11 {
    function doSomething(bytes memory _data) public {
        if (_data.length>0) {
            revert('Check');
        }
        assert(false);
        bool x=true;
        do {
            return;
        } while(x);
        unchecked {
            revert('Check');
        }
    }
}

pragma solidity ^0.8.0;
contract SimpleExample13 {
    function doSomething(bytes memory _data) public {
        if (_data.length>0) {
            return;
        }
        assert(false);
        bool x=true;
        do {
            return;
        } while(x);
        unchecked {
            return;
        }
    }
}
