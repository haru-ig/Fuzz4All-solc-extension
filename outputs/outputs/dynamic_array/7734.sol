pragma solidity ^0.8.0;
contract Test4 {
        mapping(address=>uint256) public balances;
        function check(address a) public {
                balances[a()] = 9;
            }
}

pragma solidity ^0.8.0;
contract Test3 {
        mapping(address=>uint256) public balances;
        function check(address a) public {
                balances[a] = 9;
            }
}

pragma solidity ^0.8.0;
contract Test2 {
        mapping(address=>uint256) public balances;
        function check(address a) public {
                balances[a] += a();
            }
    function a() internal returns (uint256 ){
            return 1;
        }
}

pragma solidity ^0.8.0;
library Example {

        mapping(bytes32=>bytes32[]) internal myArray;
        function set(bytes32 key, bytes32 val) public {
                require(bytes22(1 + key.length) <= key.length && key.length < bytes32(2**16), "key length out of bounds");
                key = key.repeat(val.length);
                bytes32 lastKey = key.slice(0, key.length - 1);
                bytes32 lastVal = key.slice(key.length - 1, key.length);
                myArray[key] = new bytes32[](1);
                myArray[key][0] = bytes32(byte(val.length));
                myArray[lastKey][0] = bytes32(byte(0));
                myArray[lastVal][0] = bytes32(byte(bytes32(val).slice(0, bytes32(val).length - 1)));
                key = key + bytes32('');
            }
        function get(bytes32 key) view public returns (bytes32[] memory result) {
                require(bytes22(1 + key.length) <= key.length && key.length < bytes32(2**16), "key length out of bounds for set");
                bytes32[] memory copy = myArray[key][:];
                result = new bytes32[](copy[0]);
                for(uint2
