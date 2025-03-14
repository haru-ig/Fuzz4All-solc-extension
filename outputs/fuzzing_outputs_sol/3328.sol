pragma solidity ^0.8.0;
<fim_middle>contract C {
    fallback () external payable {
        emit event();
    }
    receive () external payable {}
}
