pragma solidity ^0.8.0;
contract M12 {
    constructor () public {
        emit Log1(_msgSender());
        log1(_msgSender());
    }
    function log1(address _a) public view {
        emit Log1(_a);
    }
    event Log1(address value);
}

pragma solidity ^0.8.0;
contract M13 {
    constructor () public {
        emit Log2(address(this));
    }
    function emitLog2(address _a) public {
        emit Log2(_a);
    }
    event Log2(address value);
}
pragma solidity ^0.8.0;
