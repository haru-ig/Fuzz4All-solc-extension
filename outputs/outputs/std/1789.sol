pragma solidity ^0.8.0;
contract StringFunction {

    function replace(uint256 from, uint256 to, string memory str) public view returns (string memory) {
        bytes memory bytesOfReplacement = abi.encodePacked(str.substr(0, from), to, str.substr(from + 1));
        bytes memory replacement = abi.encodePacked(str.substr(0, from), str.substr(from + 1));
        return string(bytesOfReplacement);
    }
    function compare(string memory str1, string memory str2) public view returns (bool) {
        return bytes(str1) >= bytes(str2);
    }
}
contract Example {
    StringFunction memory sf;
    uint256[] memory a;
    function setArray() public {
        a = [0xDEADBEEF, 0xDEADBEEF];
    }
    function getArray() public view returns(uint256[] memory) {
        return a;
    }
    function testCompare() public view returns(bool) {
        return sf.compare(sf.replace(2, 3, "Hello, World!"), "Hello, World!\nHello");
    }
}


contract ProgrammaticContracts {
    ProgrammaticMutations memory pm;
    Example memory e;
    uint[] memory u;
    mapping (address => uint) public balance;
    address[] public addresses;

    constructor() {
        pm = ProgrammaticMutations(ProgrammaticMutations.());
        e = Example();
        setArray();
        getArray();
        testCompare();
    }

    function setArray() public {
        bytes memory str = abi.encode("Hello, World!");
        bytes4[] memory ids = getFuncIds(sf.replace(2, 3, str));
        for (uint i = 0; i < ids.length; i ++) {
            string memory funcName = stringsFromBytes4(ids[i]);
            if (funcName == "replace") {
                pm.replace(2, 3, str).replace();
            }
        }
    }

    function getArray() public view returns(uint) {
        return u.length;
    }

    function stringsFromBytes4(bytes4 _id) pure internal returns (bytes memory) {
        byte[] memory data = abi.encodePacked((_id >> 80) & 0xFF, (_id >> 08) & 0xFF, (_id >> 00) & 0xFF, (_id >> 24) & 0xFF);
        return string(data);
    }

    function getFuncIds(string memory funcName) public view returns(bytes4[] memory) {
        if (funcName == "replace") {
            return abi.encodePacked(bytes4(0x33DD67B6), bytes4(0xCE870B2C));
        } else {
            return bytes4[0];
        }
    }

    function testCompare() public view returns(bool) {
        bytes memory str1 = abi.encode("Hello, World!");
        bytes memory str2;
        str2 = abi.encodePacked("Hello, World!", "Hello");
        return bytes(str1) >= bytes(str2);
    }
}
