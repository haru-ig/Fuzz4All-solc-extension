pragma solidity ^0.8.0;
contract LowCostFallback2{
    receive() external payable {
        storage.store(address(this),"data",(abi.encodePacked("x")));
    }

    function store(address _to,bytes32 _key,bytes32 _value) internal {
        _to.transfer(abi.encodePacked(_value));
    }
}
