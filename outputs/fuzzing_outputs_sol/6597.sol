pragma solidity ^0.8.0;
contract Fallback {
    address private _owner;
    function setOwner(address addr) public {
        _owner = addr;
    }
    function () external payable {
        address addr = address(this);
        if (msg.value == 0) {

            if (_owner!= address(0)) {
                (bool success, ) = _owner.call{value: msg.value}{data: msg.data};
                if (!success) {
                    revert("ERC20: transfer returned failure");
                }
                emit Transfer(address(0), _owner, 0);
            }

        } else {

            (bool success, ) = addr.call{value: msg.value}{data: msg.data};
            if (!success) {
                revert("fallback contract failed transfer() call");
            }
            emit Transfer(_owner, address(0), 0);
        }
    }
}
