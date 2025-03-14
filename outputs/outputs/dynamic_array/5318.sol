pragma solidity ^0.8.0;
contract Test74 {
    mapping(uint256 => uint256) private static array;
    function f() public returns (uint256) {
        if (array.length == 0) {
            array.push(1);
        }
        return array[0];
    }
}
contract Test75 {
    function h(uint256[1] memory) public pure {
        return;
    }
}
contract Test {
    function f() public {
        Test72 test1;
        Test73 test2;
        Test74 test3;
        Test75 test4;
    }
}
