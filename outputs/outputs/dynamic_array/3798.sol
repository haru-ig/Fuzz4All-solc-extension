pragma solidity ^0.8.0;
contract C {
    bytes20[] memory a;
    bytes20 v1;
    bytes20 v2;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        a.push(v1);
        v1 = v2;
        v2 = array[0];
        array[0] = v2;
        return array.length <= 20;
    }
}
