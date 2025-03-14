pragma solidity ^0.8.0;
contract MutatedInjection
{
mapping(uint256 => uint256) public a;
    constructor() public {
        a[42] = 1;
        delete a[1];
        a[2] = 2;
        a.remove(3);
        address[] memory a2 =  new address[](3);
        a2 = new address[](3);
        a2.push(address(0));
        a[66] = 1;
        delete a[50];
        a[2] = 2;

    }
    function nonMutatedInjection(address a, address b, address c) public pure {
        address[] memory array = new address[](3);
        array[0] = a;
        array[1] = b;
        array[2] = c;
    }
    function nonMutatedInjection2(address[] memory a, address[] memory b, address[] memory c) public pure {
        address[] memory d = new address[](3);
        d = a;
        d = b;
        d = c;
    }
}
