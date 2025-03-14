pragma solidity ^0.8.0;
contract StateMutated {
    bytes32 public immutable name;
    bytes32 public immutable name2;
    uint public immutable data;
    uint public immutable data2;
    uint public immutable data3;
    uint public immutable data4;

    struct Test2 {
        uint private member;
    }
    bytes32 private keyName;
    bytes32 private name2;
    uint private data2;
    bytes32 private data3;
    bytes32 private data4;
    bytes32 private name3;
    uint private data32;
    Test2 private test2;
}
pragma solidity ^0.8.0;
contract Test {
    constructor(bytes32 name) ERC820Detailed2(name, 18) {}
    function modifyName() public modifies owner {
        name = name2;
    }
    function callModifyName() public {
        modifyName();
    }
    function stateVariable() public view returns (uint memory a) {
        a = data;
        a += data3;
        a += data32;
    }
    function bytesVariable() public view returns (bytes32 memory a) {
        a = name;
    }
    function callStateVariable() public {
        stateVariable();
    }
    function callBytesVariable() public {
        bytesVariable();
    }
    function stateVariable2(bytes32 name1) public view returns (uint memory) {
        name1 = keyName;
        return data;
    }
    function callStateVariable2() public {
        stateVariable2(name2);
    }
    function bytesVariable2(bytes32 name1) public view returns (bytes32 memory) {
        name1 = keyName.slice(2, bytes32(4));
        return name;
    }
    function callBytesVariable2() public {
        bytesVariable2(keyName.slice(2, bytes32(4)));
    }
    function stateVariable3() public {
        data3 = data2 + data32;
    }
    function callStateVariable3() public {
        stateVariable3();
    }
    function bytesVariable3(bytes32 name1) public {
        data3 = data2 + data32;
    }
    function callBytesVariable3() public {
        bytesVariable3(data4);
    }
    function contractAddress(bytes32 name1) public view returns (address) {
        bytes32 memory kname = keyName.slice(2, bytes32(4));
        return address(0x00000000000000000
