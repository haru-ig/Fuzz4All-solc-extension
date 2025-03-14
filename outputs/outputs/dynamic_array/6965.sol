pragma solidity ^0.8.0;
contract Test7 {
    bytes32[][] a;
    function m() public view returns (uint) {
        a[1] = new bytes32[](77);
        a[1] = new bytes32[](123 + 1);
        a[1][0] = a[1][0];
        a[1][1];
        a[1] = a[1].length > 64? a[1] : new bytes32[](66);
        a[1] = new bytes32[](1 + a[1].length + 1);
        a[1][2];
        return 0;
    }
}
