pragma solidity ^0.8.0;
contract Test {
    function test(address c) public {
        bool res;
        (res, ) = address(c).call{value: 0}("");
        require(res);
    }
}
