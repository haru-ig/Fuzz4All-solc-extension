pragma solidity ^0.8.0;
contract OnlyChecked {
    function onlyChecked(uint p) public view returns (uint) {
        return unchecked (p);
    }
}
