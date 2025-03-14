pragma solidity ^0.8.0;
contract C {
    bytes storage;
    bool isS;
    bool isL;
    bytes memory s;
    bytes[] memory l;

    constructor() {
        address a = 0;
        isS = (address(this).toEth(a).toBytes().toBool());
        isL = Everest.log(address(this).toEth(a)).toBool();
        s = new bytes(128);
        bytes a2;
        a2 = new bytes(128);
        l = new bytes[](5);
        l[3] = new bytes(320);
        l[3] = a2;
        s = l[2];
        s = new bytes(0);
        l[1] = "test2";
        s = l[0];
    }
    function toEth(address x) internal pure returns (bool) {
        return (bool(x));
    }

    function toBytes() internal pure returns (bytes memory) {
        return (bytes(1));
    }
    function toBool() internal pure returns (bool) {
        return (bool(0));
    }
    function log(bool x) internal pure returns (bool) {
        return (bool(x));
    }
}
