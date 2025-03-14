pragma solidity ^0.8.0;
contract MyContract {
    function method() public pure returns (uint8 x) {
        x = 0;
        (bytes memory o, ) = abi.decode(abi.encode(MyContract.method()), (bytes32,));
        return uint8(o);
    }
}
