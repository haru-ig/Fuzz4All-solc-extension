pragma solidity ^0.8.0;
contract Caller{
    modifier contractCall(address _caller, address _contract, bytes memory _data) {
        unchecked {
            (bool success, ) = _caller.call{
                gas: 500000,
                value: 0
            }(_data);

            require(success, "Caller call failed");
        }

        _;
    }

    function simpleCallWithoutFallback() public view returns (bool) {
        uint _dto1;
        bool _dto2;
        return BreadMilkExample(0xf5a3f04cE9c3400984D995A404F04FDB18eC17E8).modify();
    }

    function simpleCallAndReturn() public contractCall(msg.sender, 0xf5a3f04cE9c3400984D995A404F04FDB18eC17E8, abi.encode(7));
}
