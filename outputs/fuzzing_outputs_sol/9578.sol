pragma solidity ^0.8.0;
contract ErrorCaller {
    function error() public payable {
        emit Error();
        revert("Error");
    }
    event Error();
}
contract Caller {

    MutatedCaller public mutatedCaller = MutatedCaller(address(0xd00b48223db9b2a09a8b79cb31e6c44d667dc9a5));

    ErrorCaller public errorCaller = ErrorCaller(address(0xd00b48223db9b2a09a8b79cb31e6c44d667dc9a5));


    uint32[2] public result;

    function mutate() public payable returns (uint) {
        mutatedCaller.mutated();
        result[0] += 33;
        uint sent = mutatedCaller.mutate();
        return sent;
    }

    function error() public payable returns (uint) {

        mutatedCaller.mutated();
        if (! address(this).call{value: msg.value}("")(bytes(abi.encode(address(this))))) return 0;

        result[0] += 33;
        uint sent = mutatedCaller.mutate();

        mutatedCaller.mutated();
        if (errorCaller.error() == 0) return 1;
        return 0;
    }
}
