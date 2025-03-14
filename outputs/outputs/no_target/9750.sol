pragma solidity ^0.8.0;
interface IToken {
function testV2Contract() public;
}
contract Example4 {
    ITokenV2 simple_token = ITokenV2(0xc56C074cA3b1A7387A8459D536689F4C21E8C8A2);
    IToken smart_token = IToken(0xc56C074cA3b1A7387A8459D536689F4C21E8C8A2);
    function test() public {
        require(address(simple_token) == address(smart_token), "Must use same contract address as token");
        address a1 = ITokenV2(0xC56C074cA3b1a7387A8459d5366889ff4c21E8c8a2);
        address a2 = 0xC56C074cA3b1A7387A8459d5366889ff4c21E8c8a2;
    }
}
