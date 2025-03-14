pragma solidity ^0.8.0;
contract Test27 {
    address[] public addresses;
    function f() public {
        address[] memory a;
        a.pop();
    }
}
contract Test27 {
    address[] public addresses;
    function f() public {
        address[1] memory a;
        a.pop();
    }
}
contract Test28 {
    address[] public addresses;
    function f() public {
        addresses.push(address(0x2311));
    }
}
contract Test29 {
    address[] public addresses;
    function f() public {
        bool[] storage b;
        b.push(false);
    }
}
