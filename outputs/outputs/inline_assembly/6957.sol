pragma solidity ^0.8.0;
contract OptimizelyExample84_changed {
    address constant OWNER = address(this);
    event RevertWithReturn(address toAddress, uint256 counter);
    uint128 constant INITIAL_VALUE = 0;

    mapping(address => uint128) storage Counters;
    event CountersChanged(address indexed addressChangedFrom, uint256 counterFrom, uint256 newCounter);

    function test() public {
        Counters[OWNER] += 1;
        Counters[address(OptimizelyExample84_mutated(address(0x67c10A2e7D73D6B93c2937DD552818C6Ab88C78E)))] += INITIAL_VALUE;
        emit CountersChanged(address(OptimizelyExample84_mutated(address(0x67c10A2e7D73D6B93c2937DD552818C6Ab88C78E))), Counters[address(OptimizelyExample84_mutated(address(0x67c10A2e7D73D6B93c2937DD552818C6Ab88C78E)))], -1);
    }
}

address contractAddr = 0xb6F754F4662e07E1B42B544418dC31BDc4A244E4;

OptimizelyExample84_changed contractInstance = OptimizelyExample84_changed(contractAddr);
contractInstance.test();
{% endhighlight %}
