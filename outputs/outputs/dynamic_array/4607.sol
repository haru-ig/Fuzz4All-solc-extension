pragma solidity ^0.8.0;
contract TestComplexData {
    function test(MyComplexData memory data) public {
        data.vvv[3][2].push("hi");
    }
}
