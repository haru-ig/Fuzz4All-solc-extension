pragma solidity ^0.8.0;
contract OptimizelyExample107Inliner{
    uint72 private y;
    constructor() public {

        y;
    }







    mapping (address => uint72) mAddress;
    function update() public {
        mAddress[msg.sender] = mAddress[msg.sender] << 1;
    }
    function getAddress(address x) public view returns (uint72){
        return mAddress[x];
    }
}
