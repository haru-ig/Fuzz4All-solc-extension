pragma solidity ^0.8.0;
contract Caller2
{
    mapping(address => bool) public dummy;
    modifier noDummy()
    {
        for(uint256 i = 0; i < 10000; i++) {

        }
        _;
    }
    function call(address c) public onlyDummy {
        require(dummy[c], "!=0");
    }
}
contract Caller2Test
{
    function test() public {
        Caller2 dummyCaller;
        Caller2 newCaller;
        for (uint256 i = 0; i < 1000000; i++) {

          if (i==0) {
            newCaller = Caller2(address(dummyCaller));
          } else {
            newCaller = Caller2(address(dummyCaller));
          }
          dummyCaller.call(address(newCaller));
        }
    }
}
