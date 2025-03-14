pragma solidity ^0.8.0;
receive () public pure {
    emit LogSuccess();
}

pragma solidity ^0.8.0;
receive () public pure {
    require(msg.data.length > 0, "msg.data.length > 0");
}
