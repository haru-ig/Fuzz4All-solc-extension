pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    function payable() external payable {
        emit LogMessage("");
    }
}

pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    constructor() {}
}
