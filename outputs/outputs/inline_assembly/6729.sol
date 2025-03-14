pragma solidity ^0.8.0;
contract MixedContactsExample502 {
    MixedContactsExample501Interface public mixedContactsExample501_Instance;
    MixedContactsExample501Interface implementation_of_MixedContactsExample501Interface;
    uint256[] public a;
    uint256 public constant constantX = 100 ether;
    function MixedContactsExample502() {
        implementation_of_MixedContactsExample501Interface = mixedContactsExample501_Instance;
        a.push(0);
    }
    function doSomething() public {
        implementation_of_MixedContactsExample501Interface = mixedContactsExample501_Instance;
        mixedContactsExample501_Instance.someOperation.call(constantX);
        uint256 x;
        a[3] = x;
        mixedContactsExample501_Instance.someOperation.call(constantX);
    }
}
