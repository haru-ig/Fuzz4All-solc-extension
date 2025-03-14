pragma solidity ^0.8.0;
contract Burn {
    function BurnBy() public {
        uint256 amount = 3 * 3 * 3 * 4;
        amount = amount / 2;
    }
}
contract BurnByCaller {
    function BurnBy() public {
        uint256 amount = 6 * 5;
        Burn(Caller(amount)).BurnBy();
    }
}
contract CallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(Caller(amount)).Caller());
        return r;
    }
}
contract CallerCallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(CallerCaller(amount)).Caller());
        return r;
    }
}
contract CallerCallerCallerCallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(CallerCallerCallerCaller(amount)).Caller());
        return r;
    }
}
contract CallerCallerCallerCallerCallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(CallerCallerCallerCallerCaller(amount)).Caller());
        return r;
    }
}
contract CallerCallerCallerCallerCallerCallerCallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(CallerCallerCallerCallerCallerCallerCallerCaller(amount)).Caller());
        return r;
    }
}
contract CallerCallerCallerCallerCallerCallerCallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(CallerCallerCallerCallerCallerCallerCallerCallerCaller(amount)).Caller());
        return r;
    }
}
contract CallerCallerCallerCallerCallerCallerCallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(CallerCallerCallerCallerCallerCallerCallerCallerCaller(amount)).Caller());
        return r;
    }
}
contract CallerCallerCallerCallerCallerCallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(CallerCallerCallerCallerCallerCallerCaller(amount)).Caller());
        return r;
    }
}
contract CallerCallerCallerCallerCallerCaller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = uint256(address(CallerCallerCallerCallerCaller(amount)).Caller());
        return r;
    }
}
