pragma solidity ^0.8.0;
contract MutatedEquivalentArithmetic9 {
    enum EquivalentArithmetic22 {
        EquivalentArithmetic0 = EquivalentArithmetic0.EquivalentArithmetic22,
        EquivalentArithmetic1 = EquivalentArithmetic1.EquivalentArithmetic22,
        EquivalentArithmetic2 = EquivalentArithmetic2.EquivalentArithmetic22,
        EquivalentArithmetic3 = EquivalentArithmetic3.EquivalentArithmetic22,
        EquivalentArithmetic4 = EquivalentArithmetic4.EquivalentArithmetic22,
        EquivalentArithmetic5 = EquivalentArithmetic5.EquivalentArithmetic22,
        EquivalentArithmetic6 = EquivalentArithmetic6.EquivalentArithmetic22,
        EquivalentArithmetic7 = EquivalentArithmetic7.EquivalentArithmetic22,
        EquivalentArithmetic8 = EquivalentArithmetic8.EquivalentArithmetic22,
        EquivalentArithmetic9 = EquivalentArithmetic9.EquivalentArithmetic22
    }
}

pragma solidity ^0.8.0;
contract EquivalentArithmetic9 {
    EquivalentArithmetic22 x;
    bytes memory result;
    bytes4 x0;
    address[] public items;
    EquivalentArithmetic9() {
        x = EquivalentArithmetic22.EquivalentArithmetic9;
        result[0] = 0;
    }
    function getAddress() public view returns(address, address, address) {
        return (address(int(x)), address(int(x0)), items[0]);
    }
    function getItems() public view returns(address, address, address) {
        return (address(items), address(x), items[0]);
    }
    function updateResult(address, address) public {
        result[0] = 1;
    }
    function updateX() public {
        x = EquivalentArithmetic22.EquivalentArithmetic9;
    }
    function updateX0() public {
        x0 = bytes4(uint(-1e16));
    }
    function updateItems() public {
        items = new address[](1);
        items[0] = address(0x0);
    }
}
