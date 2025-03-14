pragma solidity ^0.8.0;
contract ImmutableDryRun {
    function immutableDryRun() public pure returns (uint) {
        return 10 + immutableDryRun();
    }
}
contract ImmutableMutableDryRun {
    function immutableMutableDryRun() public pure returns (uint) {
        return 20 + immutableMutableDryRun();
    }
}
contract ImmutableAndMutableDryRun {
    function immutableAndMutableDryRun() public pure returns (uint) {
        return 30 + immutableAndMutableDryRun();
    }
}

contract ImmutableTest {
    DryRunImmutable immutableDryRun;
    function immutableTest() public pure returns (uint) {
        ImmutableDryRun instance = new ImmutableDryRun();
        return instance.immutableDryRun() - instance.balance();
    }
}
contract MutableTest {
    DryRunMutable immutableDryRun;
    function mutableTest() public pure returns (uint) {
        ImmutableDryRun instance = new DryRunMutable();
        return instance.balance() + instance.immutableDryRun() - instance.mutableDryRun();
    }
}
contract ImmutableAndMutableTest {
    DryRunImmutable immutableDryRun;
    DryRunMutable immutableDryRunMutable;
    function immutableAndMutableTest() public pure returns (uint) {
        ImmutableAndMutableDryRun instance = new ImmutableAndMutableDryRun();
        return instance.balance() +
            instance.immutableDryRun() +
            instance.immutableDryRunMutable() -
            instance.immutableAndMutableDryRun();
    }
}
