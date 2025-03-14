pragma solidity ^0.8.0;
contract ArrayMutations {
    uint[] private a = new uint[](3, 7, 8, 9);
    uint[] private b = new uint[5];
    uint[] public c;
    function pushElement() public {
        b.push(a.length);
        c.push(a[a.length - 1]);
        a.push(a.length);
    }
}

pragma solidity ^0.8.0;
contract AddressArrays {
    bool[] private a;
    uint[] private b;
    address[] public c;
    event myEvent();
    function pushElement() public {
        c.push(address(b.length));
    }
}
