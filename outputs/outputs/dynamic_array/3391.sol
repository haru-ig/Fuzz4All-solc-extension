pragma solidity ^0.8.0;
import "./Ownable.sol";
import "../interfaces/I3aEvents.sol";
contract MyContract is Ownable, I3aEvents  {
    event e(uint);
    event ee(uint);
    event ee2(uint);
    event ee3(uint);
    event ee8(uint);
    event ee81(uint, uint);
    function f(uint v1, uint[17][] memory v3) public {
        storageArray[17][] storageArr=storageArray[17];
        storageArray[uint256(v1)]=storageArr[uint256(2)];
        storageArr[uint256(v1)]=v3;
    }
    function g(uint e, uint[2][] v3) public {
        I3aEvents.e(e);
        e2(e);
        ee(e);
        ee2(e);
        ee3(e);
        ee8(e);
        ee81(e, e);
    }
    struct st1{uint a;uint b;uint[2][] c;}
    mapping(uint=>st1) public storageArray;
}
