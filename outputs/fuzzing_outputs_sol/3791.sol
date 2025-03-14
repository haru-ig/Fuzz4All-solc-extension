pragma solidity ^0.8.0;
contract Example18 {
    function example18(uint256 x) public {
        uint256 _check = _nonMutatedFunction(x);
        uint256 _mutate = _mutatedFunction();
        _check(x);
        x -= _mutate;
    }
    function _nonMutatedFunction(uint256 _input)
        internal
        view
        pure
        returns (uint256)
    {
        _check(_input);
        return _nonMutatedFunction(_input - 1);
    }
    function _mutatedFunction() internal pure returns (uint256) {
        return 33;
    }
    function _check(uint256 _input) internal pure {
        require (_input == 1);
    }
    function _mutateInStorage(uint256 a) internal {
        a--;
    }
}

pragma solidity ^0.8.0;
contract Example19 {
    function example19(uint1 input, uint1 output) public {
        require(isFirstPayment);
        require(input > 1);
        require(input == output);
        (output, ) = _call(input);
    }
    function _lastPayment(uint256 i) private view {
        i -= 1;
    }
    function _firstPayment(uint256 i) private pure returns (
        uint1,
        uint1
    ) {
        uint1 v = uint1((i + 0x100) % 0x10000 + 1);
        uint1 w = uint1(v * uint1(v) + (i * uint1(i)));
        if (w == 0x10000) {
            w = 2;
        }
        else {
            w++;
        }
    }
    function _call(uint256 input) private pure returns (uint1, uint1) {
        return _firstPayment(input + _lastPayment(uint256(address(this)))));
    }
    uint256[20] internal payments;
    address public owner;
    modifier onlyOwner {
        require(msg.sender == owner, "Caller not owner");
        _;
    }
    constructor() {
        owner = msg.sender;
        payments[1] = 1;
    }
    function pay() public payable onlyOwner {}
}

pragma solidity ^0.8
