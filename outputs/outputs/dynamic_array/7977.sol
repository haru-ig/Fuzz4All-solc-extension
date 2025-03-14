pragma solidity ^0.8.0;
contract Test37 {
    address[][] public addrArr;
    address[][] internal addrArrInternal;
    function modifyArrInternal() public returns (address[][] memory, bool) {
        if (addrArrInternal.length == 0)
            return (addrArrInternal, false);
        addrArrInternal[0][0] = address(0xffffffffffffffffffffffffff);
        return (addrArrInternal, true);
    }
    function modifyArr() public returns (address[] memory) {
        address[] memory a = new address[](12);
        a[10] = address(0xffffffffffffffffffffffffff);
        for (uint j = 0; j < 12; j++) {
            a[j] = address(0xffffffffffffffffffffffffff);
        }
        for (uint j = 0; j < 12; j++) {
            a[j] = address(0xffffffffffffffffffffffffff);
        }
        return a;
    }
}
contract Test39 {
    address[] public addressArrayFull;
    address[] public addressArrayFullBut10;
    address[] public addressArrayFullBut20;
    address[] public addressArrayUnmodified;
    function modifyArrFull() public returns (address[]) {
        address[] memory a = new address[](12);
        a[0] = address(0xffffffffffffffffffffffffff);
        for (uint j = 1; j < 12; j++) {
            addressArrayFull[j] = address(0xffffffffffffffffffffffffff);
        }
        return a;
    }

    function modifyArrFullBut10() public returns (address[]) {
        address[] memory a = addressArrayFull.clone();
        for (uint j = 10; j < a.length; j++) {
            a[j] = address(0xffffffffffffffffffffffffff);
        }
        return a;
    }

    function modifyArrFullBut20() public returns (address[]) {
        address[] memory a = addressArrayFull.clone();
        for (uint j = 20; j < a.length;
