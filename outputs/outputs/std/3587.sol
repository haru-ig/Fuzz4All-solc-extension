pragma solidity ^0.8.0;
import "./ERC20.sol";

contract Array is ERC20 {
    constructor() ERC20("Array Test") {
        _mint(msg.sender, 56723);
    }

    function getArray(uint256 _index) public view returns (uint256 memory) {
        uint256[] memory buffer = new uint256[](3);
        buffer.length = 3;
        buffer[0] = 1;
        buffer[1] = 2;
        buffer[2] = 3;
        return buffer[_index];
    }

    function setArray() public {
        uint256[] memory originalArray = Array.getArray(0);
        Array.setArray(0, 87);
        Array.setArray(1, 101);
        uint256[] memory newArray = Array.getArray(0);
        assert(newArray[0] == 87);
        assert(newArray[1] == 101);
    }
}
