pragma solidity ^0.8.0;
contract Test39 {
    function f() external pure returns (uint[]) {
        uint[] memory a = new uint[](10);
        a[1] = 10;
        return a;
    }

    address a1;
    address a2;
    address a3;
    address a4;
    address a5;
    address a6;

    function getAddress() public view returns (address[] memory){
        address[] memory b_a = new address[](6);
        b_a[0] = a1;
        b_a[1] = a2;
        b_a[2] = a3;
        b_a[3] = a4;
        b_a[4] = a5;
        b_a[5] = a6;
        return b_a;
    }

    function setAddresses(address[] calldata a) public {
        a1 = a[0];
        a2 = a[1];
        a3 = a[2];
        a4 = a[3];
        a5 = a[4];
        a6 = a[5];
    }
}
