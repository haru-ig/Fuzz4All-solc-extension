pragma solidity ^0.8.0;
contract S9 {
    function greetings() public view returns(bytes memory) {
        byte memory a = 0x10;
        byte memory ba = 0x20;
        return abi.encodePacked(a);
    }
}
