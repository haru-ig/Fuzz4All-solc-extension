pragma solidity ^0.8.0;
contract InlineAssembly4{
    function test() public pure returns(string memory text) {
        uint[1] storage arr;
        assembly {
            arr[0] := 2,

            text := mload(add(arr, 0))
        }
        arr = [2];
        text ='red';
    }
}
