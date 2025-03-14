pragma solidity ^0.8.0;
contract MyContract {

    function f(bytes memory b) public pure returns (bytes memory) {
        return b;
    }

    function m() public view returns (bytes memory) {
        bytes memory b = bytes(f("1"));
        return b;
    }

    function add(bytes memory a, bytes memory b) public pure returns (bytes memory) {

        return abi.encodePacked(a, b);
    }

    function sub(bytes memory a, bytes memory b) public pure returns (bytes memory) {

        return abi.encodePacked(a, b);
    }

}
