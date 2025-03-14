pragma solidity ^0.8.0;
contract Mutate3 {
    uint256 initialBalance = 4200000 * 10^18;
    function first(bytes memory message) public {
        bytes memory bytesToSign = abi.encode(message);
        bytes memory bytes3 = sha3(abi.encodePacked('\x19Ethereum Signed Message:\n', message));
        bytes memory bytes4 = sha3(abi.encodePacked('\x4567', '\x3044', '\x02', bytes3));
        bytes memory bytes5 = sha3(
            abi.encodePacked('\x3cb3', '\x76dd', '\xdc12', bytes3, '\x4517')
        );
        bytes memory bytes6 = sha3(abi.encodePacked('\x3559', '\x31', '\xc03e', bytes3, '\xb543'));
        bytes memory bytes7 = sha3(
            abi.encodePacked('\xa3ba', '\xfc74', '\x9f9a', bytes5, '\xfcd0', '\x825b')
        );
        bytes memory bytes8 = sha3(
            abi.encodePacked(bytes4, bytes5, bytes6, bytes7, '\x17a3')
        );
        bytes memory bytes9 = sha3(
            abi.encodePacked(bytes8, bytes4, '\xd390', '\x131f', '\xedb4')
        );
        bytes memory bytes10 = sha3(
            abi.encodePacked(bytes7, '\xcf2f', '\x452b')
        );
        bytes memory bytes11 = sha3(
            abi.encodePacked(bytes8, '\x8d17', '\x64c2', '\xdfc3')
        );
        bytes memory bytes12 = sha3(abi.encodePacked('\x20e8', message));
        initialBalance += blockhash(block.number-1);
    }
    uint256 public initialBalance = 4200000 * 10^18;
    function second() public {
        bytes memory message = b"Hello World!";
        first(message);
        revert("revert_from_first");
    }
    function third() public {
        uint x = 2;
        bytes memory y = abi.encode(x);
        bytes memory z = sha3(
            abi.encodePacked('\x19Ethereum Signed Message:\n', message)
        );
        bytes memory w = sha3(abi.encodePacked('\xb8', abi.encode(x))));
        bytes memory v = sha3(abi.encodePacked(w, y));
        first(abi.encode(message, v, z));
        revert("revert_from_second");
    }
    function fourth() public {
        bytes memory a;
        bytes memory b = sha3(a);
        bytes memory c = sha3(abi.encodePacked(a));
        bytes memory d = sha3(abi.encodePacked
