pragma solidity ^0.8.0;
interface IStateStore
{
    function add(uint256) external;
    function delSub(uint) external;
    function mult(uint a, uint b) external pure;
    function div(uint a, uint b) external pure;
    function state() external view returns (uint);
  }
contract Program
{
    IStateStore public iStore;
    uint256 public test1;
    uint256 public test2;
    constructor(uint256 test1, uint256 test2)
        public
    {
        iStore = IStateStore(0x1d0C6A0C7B6E173048092cC93BDCC880A371A774);
        test1 = test1;
        test2 = test1 + test2;
    }
    function test1Call() public {
        uint256 a;
        uint256 b;
        uint256 sum;
        assembly {
            let a := iStore.sub(1, test2)
            let b := mul(sstore(iStore), 3)
            let sum := sub(add(a, b), div(div(b, a), a))
        }
        require(sum == iStore.state());
    }
}
