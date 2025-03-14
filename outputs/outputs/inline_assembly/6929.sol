pragma solidity ^0.8.0;
contract OptimizelyExample77 {
    uint8[933] internal emptySlots;
}

pragma solidity ^0.8.0;
contract OptimizelyExample78 {
    uint8[1001] internal emptySlots;
}

pragma solidity ^0.8.0;
contract OptimizelyExample79 {
    uint8[1000] internal emptySlots;
}

pragma solidity ^0.8.0;
contract OptimizelyExample80 {
    mapping(address => uint8) internal emptySlots;
}

pragma solidity ^0.8.0;
library OptimizelyContracts {
    function read(bytes32) internal pure returns (uint8) {}
}

pragma solidity >=0.8.1;
import ".\lib\OptimizelyContracts.sol";
contract OptimizelyExample81 {
    bytes6 constant id = "1276b830cf75ba263491ddca6d97e8457f8d23599e8e3e0";
    address public admin;
    event SlotChanged(bytes6 indexed slot, uint8 newVal);
    constructor() {
        admin = msg.sender;
    }

    function set(uint8 newVal, bytes32 slot) public onlyOwner {
        OptimizelyContracts.read(slot);
        emptySlots[slot] = newVal;
        emit SlotChanged(slot, newVal);
    }

    modifier onlyOwner() {
        require(msg.sender == admin || msg.sender == OptimizelyContracts.read(id));
        _;
    }
}

pragma solidity >=0.8.1;
import ".\lib\OptimizelyContracts.sol";
contract OptimizelyExample82 {
    bytes6 constant id = "10f71bc1615d48fe738c27954b17ecfa1b472c1da9a99cf4";
    address public admin;
    event SlotChanged(bytes6 indexed slot, uint8 oldValue, uint8 newValue);
    constructor() {
        admin = msg.sender;
    }

    function setAndGet(uint8 newVal, bytes32 slot)
