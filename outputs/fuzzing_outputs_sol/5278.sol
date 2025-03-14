pragma solidity ^0.8.0;
interface Fallback5
{
        function a(uint64 x) external;
}
address payable contractAddr = address(0x725FF83b20C6abA80c9F2E1181781779637e8332);
contract S2 {
        uint256 x = 42;
        constructor() public {}
        function a(uint64 data, uint64 x) public payable{
                fallback();
                fallback2(data);
        }
        fallback function() public payable{}
        fallback function() external returns(uint256){ x += 4;}
        fallback function() nonpayable{}
        function fallback2(uint64 data) public payable{
                doSomethingElse();
                data = x;
        }
        function doSomethingElse() public returns(uint64){ return x; },
        receive() public payable {}
        receive() public returns(uint) {}
}
