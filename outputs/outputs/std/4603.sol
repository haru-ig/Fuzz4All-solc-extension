pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 private _storage;

    constructor(uint256 _storage) public {
        _storage = _storage;
    }

    function returnStorageVariable() public view returns (uint256) {
        return _storage;
    }

    function changeStorageVariable(uint256 _data) public {
        _storage = _data;
    }
}

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";
contract Example
{
    constructor() public {
        Ownable.transferOwnership(msg.sender);
    }

    function destroy() public {
        selfdestruct(msg.sender);
    }
}
