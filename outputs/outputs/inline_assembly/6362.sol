pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MyContract {
    uint x = 10;
    uint myFunc(uint256 y, uint256 z) public {
        x = 5;
        x = 20;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MyContract {
    mapping(uint256 => string) colors;
    function takeColor() public {
        colors[10] = "Red";
        colors[13] = "Green";
        colors[15] = "Blue";
    }

    function askForColor() public view returns (string memory) {
       return colors[uint256(address(this).balance)]
    }
}
