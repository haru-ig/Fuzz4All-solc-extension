pragma solidity ^0.8.0;
contract M12 {
    constructor() public {
        emit Log(address(this));
    }
    function emitLog(address _a) public {
        emit Log(_a);
    }
    event Log(address value);
    function test() public pure {
        emit Log(address(this));
    }
}
contract M13 {
    constructor() public {
        address m1 = address(this);
        address m2 = address(new M12());

        emit Log(m1);
        emit Log(m2);
        emit Log(m1);
        emit Log(address(this));
        emit Log(address(new M11()));
    }
    function emitLog(address _a) public {
        emit Log(_a);
    }
    event Log(address value);
}
contract M14 {
    constructor() public {
        address[] memory args = new address[](1);
        args[0] = address(new M12());
        emit Log(args);
        emit Log(abi.encode(args));
        emit Log(abi.decode(abi.encode(args), address[](1)));
        emit Log(abi.decode(abi.encode(args), address[]));
        emit Log(abi.decode(abi.encode(args), (address[](1))[0]));

    }
    function emitLog(address[] memory _a) public {
        emit Log(_a);
    }
    event Log(address[] value);
}
