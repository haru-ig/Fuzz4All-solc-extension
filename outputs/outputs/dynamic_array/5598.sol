pragma solidity ^0.8.0;
contract Test71 {
    function z() public {

        uint32[] memory a = new uint32[](1);
    }
}

pragma solidity ^0.8.0;
contract Test72 {
    function z() public view {
        bytes32[] memory a = new bytes32[](1);
    }
}

pragma solidity ^0.8.0;
contract Test73 {
    function z(uint256 b) public view {
        bytes2 b2 = (bytes2);

        (b2)++;
    }
}
