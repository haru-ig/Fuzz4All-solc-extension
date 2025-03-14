pragma solidity ^0.8.0;
contract HelloWorld {
    function hello() public pure returns (uint) {
        bytes memory data = 'Hello '.tobytes();
        return uint(data[42]);
    }
}
