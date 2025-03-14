pragma solidity ^0.8.0;

contract CallerMutated {
    Caller immutable caller;
    function get() external view returns (uint) {


        unchecked {
            caller = Caller(addr.call(abi.encodeWithSelector(Caller.get.selector)));
        }
        return caller.get();
    }
    function fallback(uint x) public {
        unchecked {
            caller = Caller(addr.call(abi.encodeWithSelector(Caller.get.selector)));
        }
        caller.fallback(x);
    }
}

pragma solidity ^0.8.0;

contract CallerWithFallback {
    function get() external pure returns (uint) {
        unchecked {}
    }
    function fallback(uint x) external payable {
        unchecked {}
    }
}

pragma solidity ^0.8.0;

contract CallerWithExtra {
    function get(uint x) external pure returns (uint) {
        unchecked {}
    }
    function fallback(uint x, uint y) external payable {
        unchecked {}
    }
}

pragma solidity ^0.8.0;

contract FallbackTest {

    mapping (address => uint256) public amounts;


    mapping (address => address) public to;

    function fallback(uint x) public {
        if (msg.value > 0) {
            amounts[msg.sender] = amounts[msg.sender].add(msg.value);
            to[msg.sender] = msg.sender;
        }
    }
    function get() public view returns (uint) {
        return amounts[msg.sender];
    }
    function sendEther(uint x) public {
        (bool sent, ) = msg.sender.call{value: x}("");
        require(sent, "fallback test expected to send Ether");
    }
    function getAddress(uint x) public view returns(address) {
        return to[msg.sender];
    }
}
