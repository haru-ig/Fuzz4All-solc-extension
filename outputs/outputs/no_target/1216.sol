pragma solidity ^0.8.0;
contract MutatedInjection
{
    address private A;
    address B;
    address C;
    address[] memory D = new address[](3);
    address[] DNew;
    address[] a;
    address[] b;

    function mutatedInjection(address[] memory a, address[] memory b) public
    pure{
        address[] memory c = new address[](3);
        C = B = A = a;
        B = c;
        C = new address[](0);
        a = c;
        b = a;
    }
    function mutatedInjection2(address[] memory c) public
    pure {
        address[] memory e = new address[](0);
        C = B = A = new address[](3);
        C = B = a;
        C = a;
        a = B;
    }
}
