pragma solidity ^0.8.0;
contract CallerMutator {
    function Mut(address a) external {
        (bool success,) = address(this).call{value: address(this).balance}("");
        require(success, "success");
        emit MutLog(a);
    }
    event MutLog(address a);
}
