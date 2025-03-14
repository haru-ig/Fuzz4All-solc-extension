pragma solidity ^0.8.0;
contract Test78 {
    uint[10] internal arr;

    function updateStorage() public {
        delete arr[0];
    }

    function getStorage() public view returns (uint[10]) {
        return arr;
    }

    function initStorage() public {
        arr = new uint[](10);
    }
}
