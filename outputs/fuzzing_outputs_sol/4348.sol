pragma solidity ^0.8.0;
contract CallerNoModifierMutated {
    function _mutate() {
        (bool success, ) = address(this).call{value: 12}("");
        require(success);
    }
}
