pragma solidity ^0.8.0;
contract Caller6
{
        mapping(address => uint64) map;
        uint64 result;

        constructor()
        {
                map[address(this)] = 0;
        }

        function c(uint64 x) external
        {
                result = result + map[address(this)];
        }

        fallback() public { map[msg.sender] += x;}

}
contract Caller5
{
        bytes32 message = "1234";


        fallback() public { revert();}


        function c(uint64) external { revert();}
}
contract Caller4
{

        calldata bytes32_message = "1234";

        function c(uint64)
        {
                require(keccak256(abi.encodePacked(bytes(bytes_message))) == keccak256(abi.encodePacked(bytes(message))));
        }
}
contract Caller3
{
        bytes32 private _message = "1234";

        function _c(uint64)
        {
                require(keccak256(abi.encodePacked(bytes(bytes_message))) == keccak256(abi.encodePacked(bytes(_message))));
        }

        fallback() public { _c(444);}
}
contract Caller2
{
        bytes32 private _message = "1234";
        bytes32 public constant _digest = keccak256(abi.encode(bytes, bytes_message));

        function _c(uint64)
        {
                require(_digest == keccak256(abi.encodePacked(bytes(_message))));
        }

        fallback() public { _c(445);}
}
contract Caller1
{

        fallback() public { revert();}


        function c()
        {
                require(keccak256(abi.encodePacked("1234")) == keccak256(abi.encodePacked(msg.data)));
        }
}
