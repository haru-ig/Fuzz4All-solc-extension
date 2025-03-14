pragma solidity ^0.8.0;
contract SymbolicEquality_Assignment_V3 {
    bytes32 public b_a;
    address[] public a;
    constructor () public {
        a = new address[](1);
        a.push(address(1));
        a.push(address(2));
        b_a = sha3("foo");
    }
    function setAddressArray(address[] memory a, uint k) public {
        a[1] = address_push(a, (x_pop(a, 1)<<80));
        a[2] = address(a_pop(a));
    }
    function assignBytes(bytes32 a, uint k) public {
        a_modify(b_a, k);
    }
    function assignAddress(address a, uint k) public {
        a_modify(address_push(a, x_pop(a, 10)), k);
    }
    function getAddress_V3(address[] memory a, uint k) public pure {
        return (a[0] == address_pop(a, 1)) & (a[1] == address_pop(a, 9)) & (a[2] == a_pop(a, 37));
    }
    function getAddressArray_V3(address[] memory a, uint k) public pure {
        return a[2] == address(a_pop(a)) & a[1] == address_pop(a, 9) & a[0] == address_pop(a, 1);
    }
    function getBytes(bytes32 a, uint k) public pure {
        return (a_pop(a, 17) == ((a[1] * 100) * 100)) & (a_pop(a, 28) == (a[0] / 1000)) & (a[24] == a_pop(a, 14));
    }
    function getBytesArray_V3(bytes32 a, uint k) public pure {
        return (a[3] == a_pop(a)) & (a[2] == a_pop(a, 9)) & (a[1] == a_pop(a, 19));
    }
}
pragma solidity ^0.
