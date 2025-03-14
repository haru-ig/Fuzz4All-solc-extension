pragma solidity ^0.8.0;
contract Upgrade_0027 {
    function mutant() public pure returns (string memory m) {
        return "a";
    }
}

pragma solidity ^0.8.0;
contract Upgrade_0027 {
    struct Inner {
        Inner() { emit(1); }
        function read() public pure returns (Inner memory) {
            Inner memory result;
            assembly { result := 0x01000000010000000000000000000000000000000000000000000000000000000 }
            return result;
        }
        mapping (bytes32 => bytes32) data;
        function get(bytes32 key) public pure returns (bytes32) {
            return data[key];
        }
        function set(bytes32 key, bytes32 value) public pure {
            data[key] = value;
            emit(1);
        }
    }

    struct MyStruct {
        mapping (Inner) data;
    }

    Inner memory result;

    function mutant() public pure returns (MyStruct memory) {
        MyStruct memory result;
        result.data[Inner({ data: {
            data: Inner.read()
        }}})] = Inner({ data: {
            data: 1
        }});
        result.data[Inner({ data: {
            data: Inner.read()
        }}})] = Inner({
            data: {
                data: Inner.read()
            }});

    }
}
