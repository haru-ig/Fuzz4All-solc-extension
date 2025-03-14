pragma solidity ^0.8.0;
contract test  {
    string public d;
    address[] public a;
    function GetArraysAdd() public {
        a.push(address(1));
        a.push(address(2));
        a.push(address(3));
        a.push(address(address(4)));
        a.push(address(address(5)));
        d = "hello";
        a.push(address(1));
    }

    function SetArrayElements() public {
        a[2] = address(1);
        a[4] = address(1);
    }
}
