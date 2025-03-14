pragma solidity ^0.8.0;
contract Test43{
    contract test{
        mapping (uint => uint256) public mynMap;
        constructor () public {
            mynMap[1] = 2;
        }
        function test() public {
            mynMap[1] = mynMap[1]+1;
        }
    }
}
