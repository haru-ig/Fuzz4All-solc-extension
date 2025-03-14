pragma solidity ^0.8.0;
contract Array2_Mutable {
    uint256[] public data;

    function modify(uint256[] memory _data) public {
        data = _data;
    }

    function get() public view returns (uint256[] memory) {
        return data;
    }
}
