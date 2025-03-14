pragma solidity ^0.8.0;
contract SimpleExample15 {
    constructor(address _owner) public {
        if (_owner==msg.sender) selfdestruct(_owner);
    }
    function doSomething(uint _data) public {
        if (_data == 0) {
            assert(false);
            unchecked {
                return;
            }
        }
        unchecked {
            if (_data < 5) return;
            if (_data == -123) revert('');
            else return;
        }
    }
