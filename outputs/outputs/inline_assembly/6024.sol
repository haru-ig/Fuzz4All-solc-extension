pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample5 {
    address public owner;
    uint256[] internal arr;
    address[] internal arr2;
    uint256 public arr3;
    function main() public {
        owner = msg.sender;
        arr.push(1);
        arr.push(2);
        arr.push(3);
        arr2.push(4);
        arr3++;
    }
}
