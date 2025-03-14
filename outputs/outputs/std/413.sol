pragma solidity ^0.8.0;
contract Test {
    address public admin;
    uint public numModArgs;
    function test(uint a, uint b, uint c, uint8 d, uint8 e, uint8 f) public pure {
        uint8 b8 = uint8((a & 0xFF) + b >= 10? uint8((b & 0xFF) + c >= 10? uint8((b & 0xFF) + c >= 10? uint8((f + d) + uint8((b << 25 | c) << 11)) : uint8((b << 25 | c) << 11)) : uint8(b << 25 | c) << 11)) : a);
        uint8 b9 = uint8(uint8(e + (a >> 25)) + b >= 10? uint8((e + (b >> 25)) + d >= 10? uint8((e + (d >> 25)) + c >= 10? uint8((f + (a >> 25)) + uint8((d << 25 | b) << 23)) : uint8((d << 25 | b) << 23)) : uint8(d << 25 | b) << 23)) : b);
        uint8 b10 = uint8(c >> 25);
        uint8 b11 = b10 | e;
    }
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == admin, "!owner");
        _;
    }
    function modifyArgs(uint a, uint b, uint c, uint8 d, uint8 e, uint8 f) public onlyOwner {
        numModArgs = 1;
        test(a, b, c, d, e, f);
    }
    function getArgs() public returns (uint) {
        return numModArgs;
    }
}
