pragma solidity ^0.8.0;
contract PristineFallbackMutatedFallbackMultiData2 {
    uint public fallbackValue;
    uint public key;
    address constant contract1 = 0xACfF32805598BEd61eE5C8D2C07A147d4043886A;
    bytes32 public key1;
    address constant contract2 = 0xFE46fAD7e45E51938184b24e97B21C89325E0741;
    bytes32 public key2;
    constructor(bytes32 _key) public payable {
        fallbackValue = 2;
        key = 2;
        key1 = _key;
        contract1.call{value:500}(abi.encodeWithSelector(this.sendValue, _key));
        contract1.sendValue(500);
        contract2.call{value:50}("");
        contract2.call{value:50}("");
        contract2.call{value:500}("");
        contract2.call{value:500}("");
    }
    function mutate() public {
        fallbackValue = 3;
        key = 3;
        key1 = key;
    }
    function sendValue(bytes32 _key) public payable {
    payable(address(this)).transfer(1000);
    contract2.call{value:50}("");
    contract2.call{value:50}("");
    contract2.call{value:500}("");
    contract2.call{value:500}("");
    }
}
