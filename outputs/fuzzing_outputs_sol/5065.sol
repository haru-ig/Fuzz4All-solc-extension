pragma solidity ^0.8.0;
contract ContractFallback
{
    event FallbackCalled();
address public fallbackAddress;
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function fallback() public payable {
        address next;
        (, next) = msg.data.functionSelector;
        fallbackAddress = msg.sender;
        if (next == 1) {

        FallbackCalled();
        }
        if (next == 2) {

        address s;
        address d;

        (s, d) = msg.data.defI();
        fallbackAddress = msg.sender;

        d = d.add(next);
        s.send(msg.value);
        address memory s2;
        uint codeSize;
        assembly {
        s := mload(add(next, 32))
        s2 := mload(add(next, 64))
        codeSize := mload(add(next, 128))
        }

        bytes memory b = new bytes(codeSize){
        b[7:] = code{0x60, 0xa0, 0x39, 0xd5, 0x60, 0x80};
        }
        require(fallbackAddress == s2, "failed to call fallback()");
    revert(0, b);
       FallbackCalled();
    }
    function init() public {
        fallbackAddress= msg.sender;
    }
}
contract CallBack
{
address public fallbackAddress;
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function callBack(uint256 a) public {
        fallbackAddress = msg.sender;
    }
    contract Init
    {
address public fallbackAddress;
    constructor() public {
        fallbackAddress= msg.sender;
    }
    function init() public {
        fallbackAddress= msg.sender;
    }
}
contract CallFail
{
address public fallbackAddress;
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function callBack(uint256 a) public {
        fallbackAddress = msg.sender;
    }
    function init() public {
        fallbackAddress= msg.sender;
    }
    function callFail() public returns (bool) {
        fallbackAddress = msg.sender;
        fallback(fallbackAddress);
        revert("test");
    }
}
contract CallBack
{
address public fallbackAddress;
    function mutate() public pure returns
