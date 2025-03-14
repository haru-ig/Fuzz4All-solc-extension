pragma solidity ^0.8.0;
contract CallMutated {
    address public _to;
    constructor(address _to) {
        setAddr(_to);
    }
    fallback() external payable {
        msg.sender == _to;
    }
    function setAddr(address _to) public {
        _to = _to;
    }
}

pragma solidity ^0.8.0;
contract CallFallback {
    address public _to;
    constructor(address _to) {
        setAddr(_to);
    }
    function setAddr(address _to) public {
        _to = _to;
    }
    fallback() public payable {
        msg.sender == _to;
    }
}

pragma solidity ^0.8.0;
contract CallFallbackMutated {
    address public _to;
    constructor(address _to) {
        setAddr(_to);
    }
    fallback() public payable {
        msg.sender == _to;
    }
    function setAddr(address _to) public {
        _to = _to;
    }
}
