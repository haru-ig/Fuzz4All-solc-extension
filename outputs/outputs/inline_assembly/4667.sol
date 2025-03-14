pragma solidity ^0.8.0;
contract mutator83 {
    uint z = 3;
    constructor() {
    z = 100; } }
contract caller83{
    address contractAddress;
    constructor(address _contractAddress) { contractAddress =_contractAddress; }
    function setNewValue (uint _value) external {
        contractAddress.call{value:0x00000000000000000000000000000000000000082}(_value);
    }
    function getValue() external view returns (uint){
        return contractAddress.call{value:0x00000000000000000000000000000000000000082}(new bytes(0));
    }
}
<fim_middle>contract mutatorCallCall83{
    uint x = 2;
    uint z = 1;
    constructor() {
    z = 2; }
    void callCallValue() public {
        x = 3;
        contractAddress.call{value:0x00000000000000000000000000000000000000000000}(new bytes(0));
    }
}
