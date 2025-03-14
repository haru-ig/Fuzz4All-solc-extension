pragma solidity ^0.8.0;
contract D1 {
    bytes20[] a1;
    function modifiesArray(address receiver, uint length, bytes20[] memory array) public {
        a1 = array;
        length++;
        emit ModifiesArray({value: uint(address(receiver))});
    }
}
pragma solidity ^0.8.0;
contract D2 {
    mapping(uint => address[]) d1;
    function modifiesArray(uint length, uint value) public returns (address) {
        d1[value] = new address[](length);
        emit ModifiesArray({value: uint(d1[value][length-1])});
    }
    function hasModifiesArray(address[] memory array) public pure returns (bool) {
        return uint(array[0]) == uint(a1[0]);
    }
}
